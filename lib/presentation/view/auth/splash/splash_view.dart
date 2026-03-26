import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/routes/app_navigator.dart';
import 'package:flutter_core_template/core/utils/routes/app_route_generator.dart';
import 'package:flutter_core_template/core/utils/themes/colors/app_color.dart';
import 'package:flutter_core_template/core/utils/themes/sizes/app_size.dart';

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
      body: Center(
        child: FlutterLogo(
          size: appSize.width * 0.3,
        ),
      ),
    );
  }
}
