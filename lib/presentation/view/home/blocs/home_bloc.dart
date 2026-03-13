// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_core_template/core/configuration/app_dependency_injection.dart';
// import 'package:flutter_core_template/core/util/global/app_state.dart';
// import 'package:flutter_core_template/core/util/global/typedefs.dart';
// import 'package:flutter_core_template/core/util/print/app_print.dart';
// import 'package:flutter_core_template/data/models/product_model.dart';
// import 'package:flutter_core_template/data/request/load_more_request.dart';
// import 'package:flutter_core_template/domain/repository/product_repository.dart';
// import 'package:flutter_core_template/presentation/view/home/blocs/home_event.dart';
// import 'package:flutter_core_template/presentation/view/home/blocs/home_state.dart';
//
// class HomeBloc extends Bloc<HomeEvent, HomeSate> {
//   final ProductRepository _productRepository = getIt<ProductRepository>();
//   HomeBloc() : super(HomeSate(appState: AppState(request: PaginationRequest()))) {
//     on<LoadHomeDataEvent>(_emitLoadHomeDataEvent);
//     on<GetProductEvent>(_emitGetProductEvent);
//
//     add(LoadHomeDataEvent());
//   }
//
//   onRefresh() {
//     add(GetProductEvent(isRefresh: true));
//   }
//
//   _emitLoadHomeDataEvent(LoadHomeDataEvent event, emit) async {
//     //error
//     add(GetProductEvent());
//   }
//
//   _emitGetProductEvent(GetProductEvent event, emit) async {
//     if (state.appState.request?.isLoading == true) return;
//     if (event.isRefresh) {
//       state.appState.request = state.appState.request?.copyWith(page: 0, hasMore: true);
//       emit(HomeSate(appState: state.appState.loading()));
//     }
//     if (state.appState.request?.hasMore == false) return;
//     state.appState.request = state.appState.request?.copyWith(isLoading: true);
//     emit(HomeSate(appState: state.appState));
//
//     DataMap map = {"limit": 10, "skip": 0};
//     final either = await _productRepository.getProduct(map);
//     either.fold((failure) {
//       appPrint("failure ${failure.toJson()}");
//       emit(HomeSate(appState: state.appState.error("Failed", onTap: () => appPrint("Tap Retry"))));
//     }, (response) {
//       List<ProductModel> products = response.data.map((e) => ProductModel.fromJson(e)).toList();
//       if (products.length < 10) {
//         state.appState.request = state.appState.request?.copyWith(hasMore: false);
//       }
//       if (event.isLoadMore == false) {
//         emit(HomeSate(appState: state.appState.completed(data: products)));
//       } else {
//         state.appState.data?.addAll(products);
//         emit(HomeSate(appState: state.appState));
//       }
//       state.appState.request = state.appState.request?.increase();
//       state.appState.request = state.appState.request?.copyWith(isLoading: false);
//       emit(HomeSate(appState: state.appState));
//     });
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/configuration/app_dependency_injection.dart';
import 'package:flutter_core_template/core/util/global/app_state.dart';
import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/core/util/print/app_print.dart';
import 'package:flutter_core_template/data/models/product_model.dart';
import 'package:flutter_core_template/data/request/load_more_request.dart';
import 'package:flutter_core_template/domain/repository/product_repository.dart';
import 'package:flutter_core_template/presentation/view/home/blocs/home_event.dart';
import 'package:flutter_core_template/presentation/view/home/blocs/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeSate> {
  final ProductRepository _productRepository = getIt<ProductRepository>();
  final int _limit = 10;

  HomeBloc() : super(HomeSate(appState: AppState(request: PaginationRequest(page: 0, hasMore: true)))) {
    on<LoadHomeDataEvent>(_emitLoadHomeDataEvent);
    on<GetProductEvent>(_emitGetProductEvent);

    // Initial load
    add(LoadHomeDataEvent());
  }

  void onRefresh() {
    add(GetProductEvent(isRefresh: true));
  }

  void onLoadMore() {
    add(GetProductEvent(isLoadMore: true));
  }

  Future<void> _emitLoadHomeDataEvent(LoadHomeDataEvent event, Emitter<HomeSate> emit) async {
    add(GetProductEvent());
  }

  Future<void> _emitGetProductEvent(GetProductEvent event, Emitter<HomeSate> emit) async {
    final currentRequest = state.appState.request;

    // 1. Guard Clauses
    if (currentRequest?.isLoading == true) return;
    if (!event.isRefresh && currentRequest?.hasMore == false) return;

    // 2. Prepare Request State (Immutably)
    int nextPage = event.isRefresh ? 0 : (currentRequest?.page ?? 0);

    // Update state to loading
    if (event.isRefresh) {
      emit(state.copyWith(
        appState: state.appState.copyWith(request: currentRequest?.copyWith(isLoading: true, page: nextPage)).loading(),
      ));
    } else {
      emit(state.copyWith(
        appState: state.appState.copyWith(request: currentRequest?.copyWith(isLoading: true, page: 0)),
      ));
    }

    // 3. Data Fetching
    DataMap params = {
      "limit": _limit,
      "skip": nextPage * _limit,
    };

    final either = await _productRepository.getProduct(params);

    either.fold(
      (failure) {
        appPrint("failure ${failure.toJson()}");
        emit(state.copyWith(
          appState: state.appState.error("Failed to load products", onTap: () {}),
        ));
      },
      (response) {
        final List<ProductModel> newProducts = (response.data as List).map((e) => ProductModel.fromJson(e)).toList();

        final bool hasMore = newProducts.length >= _limit;

        // 4. Merge Data
        List<ProductModel> updatedList;
        if (event.isRefresh) {
          updatedList = newProducts;
        } else {
          updatedList = List<ProductModel>.from(state.appState.data ?? [])..addAll(newProducts);
        }

        // 5. Final State Emission (Single Emit)
        emit(state.copyWith(
          appState: state.appState.completed(data: updatedList).copyWith(
                request: currentRequest?.copyWith(
                  isLoading: false,
                  page: nextPage + 1,
                  hasMore: hasMore,
                ),
              ),
        ));
      },
    );
  }
}
