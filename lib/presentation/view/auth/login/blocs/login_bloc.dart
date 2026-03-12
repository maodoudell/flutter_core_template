import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/configuration/app_dependency_injection.dart';
import 'package:flutter_core_template/core/util/global/app_state.dart';
import 'package:flutter_core_template/core/util/print/app_print.dart';
import 'package:flutter_core_template/core/util/route/app_navigator.dart';
import 'package:flutter_core_template/core/util/route/app_route_generator.dart';
import 'package:flutter_core_template/data/models/product_model.dart';
import 'package:flutter_core_template/domain/repository/product_repository.dart';
import 'package:flutter_core_template/presentation/view/auth/login/blocs/login_event.dart';
import 'package:flutter_core_template/presentation/view/auth/login/blocs/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ProductRepository _productRepository = getIt<ProductRepository>();
  LoginBloc() : super(LoginState(appState: AppState())) {
    on<LoadLoginDataEvent>(_emitLoadLoginDataEvent);
    on<SubmitLoginEvent>(_emitSubmitLoginEvent);

    add(LoadLoginDataEvent());
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

  _emitSubmitLoginEvent(SubmitLoginEvent event, emit) async {
    // Loading.instance().show();
    // await Future.delayed(const Duration(seconds: 3)); // wait for a second
    AppNavigator.pushReplacedNamed(AppRoute.home);
    // Loading.instance().hide();
  }
}
