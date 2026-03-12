import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/errors/route_not_found.dart';
import 'package:flutter_core_template/presentation/views/auth/login/blocs/bloc.dart';
import 'package:flutter_core_template/presentation/views/auth/login/login_view.dart';
import 'package:flutter_core_template/presentation/views/home_view.dart';
import 'package:flutter_core_template/presentation/views/splash_view.dart';

class AppRoute {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
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
    switch (route) {
      case AppRoute.splash:
        return const SplashView();
      case AppRoute.login:
        return BlocProvider(
          create: (context) => LoginBloc(),
          child: const LoginView(),
        );
      case AppRoute.home:
        return HomeView();
      default:
        return const RouteNotFound();
    }
  }
}
