import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/utils/print/app_print.dart';
import 'package:flutter_core_template/presentation/conponents/buttons/Loading.dart';
import 'package:logger/logger.dart';
import 'package:flutter_core_template/core/utils/app_state.dart';
import 'package:flutter_core_template/core/utils/dependency_injection.dart';
import 'package:flutter_core_template/data/models/product_model.dart';
import 'package:flutter_core_template/domain/repositories/product_repository.dart';
import 'package:flutter_core_template/presentation/views/auth/login/blocs/login_event.dart';
import 'package:flutter_core_template/presentation/views/auth/login/blocs/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ProductRepository _productRepository = getIt<ProductRepository>();
  LoginBloc() : super(LoginState(appState: AppState())) {
    on<LoadLoginDataEvent>(_emitLoadLoginDataEvent);
    on<SetLoadingEvent>(_emitSetLoadingEvent);

    add(LoadLoginDataEvent());
    add(SetLoadingEvent());
  }

  _emitLoadLoginDataEvent(LoadLoginDataEvent event, emit) async {
    final either = await _productRepository.getProduct();
    either.fold((failure) {
      print("failure ${failure.toJson()}");
    }, (response) {
      List<ProductModel> products = response.data.map((e) => ProductModel.fromJson(e)).toList();
      appPrint("${response.toJson()}");
    });
    //error
    state.appState.error("message", onTap: () {});
    emit(LoginState(appState: state.appState.completed(data: [])));
    // emit(LoginState(appState: state.appState.error("message", onTap: (){})));
  }

  _emitSetLoadingEvent(SetLoadingEvent event, emit) async {
    Loading.instance().show();
    await Future.delayed(const Duration(seconds: 3)); // wait for a second
    Loading.instance().hide();
  }
}
