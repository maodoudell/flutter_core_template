import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/errors/route_not_found.dart';
import 'package:flutter_core_template/core/utils/print/app_print.dart';
import 'package:flutter_core_template/presentation/view/auth/login/blocs/bloc.dart';
import 'package:flutter_core_template/presentation/view/auth/login/login_view.dart';
import 'package:flutter_core_template/presentation/view/auth/setting/setting_view.dart';
import 'package:flutter_core_template/presentation/view/home/blocs/home_bloc.dart';
import 'package:flutter_core_template/presentation/view/home/home_view.dart';
import 'package:flutter_core_template/presentation/view/auth/splash/splash_view.dart';

class AppRoute {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String setting = '/setting';
}

class AppRouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments as dynamic;
    final routes = routeSettings.name?.split('/');
    final routeName = routes?.length == 2 ? routeSettings.name : '/${routes?[1]}';
    final id = routes?.last ?? '';
    return MaterialPageRoute(settings: routeSettings, builder: (context) => _getPage(routeName, id, arguments));
  }

  static Widget _getPage(String? route, String id, dynamic arguments) {
    appPrint("${route}");
    switch (route) {
      case AppRoute.splash:
        return const SplashView();
      case AppRoute.login:
        return BlocProvider(
          create: (context) => LoginBloc(),
          child: const LoginView(),
        );
      case AppRoute.home:
        return BlocProvider(
          create: (context) => HomeBloc(),
          child: const HomeView(),
        );
      case AppRoute.setting:
        return SettingView();
      default:
        return const RouteNotFound();
    }
  }
}
