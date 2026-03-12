import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/configuration/app_dependency_injection.dart';
import 'package:flutter_core_template/core/constant/app_constant.dart';
import 'package:flutter_core_template/core/util/l10n/app_localizations.dart';
import 'package:flutter_core_template/core/util/route/app_navigator.dart';
import 'package:flutter_core_template/core/util/route/app_route_generator.dart';
import 'package:flutter_core_template/core/util/themes/color/app_color_scheme.dart';
import 'package:flutter_core_template/core/util/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupAppModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.lomHatApp,
      theme: appThemeData(
        AppColorScheme(ColorMode.light).generate(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
