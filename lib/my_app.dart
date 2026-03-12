import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/constants/app_constant.dart';
import 'package:flutter_core_template/core/utils/routes/app_navigator.dart';
import 'package:flutter_core_template/core/utils/routes/app_route_generator.dart';
import 'package:flutter_core_template/core/utils/themes/color/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.lomHatApp,
      theme: appThemeData(
        AppColorScheme(ColorMode.light).generate(),
      ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      //   appBarTheme: AppBarTheme().copyWith(centerTitle: true),
      // ),
      navigatorKey: AppNavigator.navigator,
      onGenerateRoute: AppRouteGenerator.getRoute,
    );
  }
}
