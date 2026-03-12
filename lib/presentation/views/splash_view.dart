import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/routes/app_navigator.dart';
import 'package:flutter_core_template/core/utils/routes/app_route_generator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    start();
    super.initState();
  }

  start() async {
    await Future.delayed(const Duration(seconds: 2));
    AppNavigator.pushReplacedNamed(AppRoute.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash View")),
    );
  }
}
