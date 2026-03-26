import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core_template/core/configurations/app_dependency_injection.dart';
import 'package:flutter_core_template/core/constants/app_constant.dart';
import 'package:flutter_core_template/core/utils/l10n/app_localizations.dart';
import 'package:flutter_core_template/core/utils/routes/app_navigator.dart';
import 'package:flutter_core_template/core/utils/routes/app_route_generator.dart';
import 'package:flutter_core_template/core/utils/themes/colors/app_color_scheme.dart';
import 'package:flutter_core_template/core/utils/themes/theme.dart';
import 'package:flutter_core_template/presentation/view/global/blocs/global_bloc.dart';
import 'package:flutter_core_template/presentation/view/global/free_blocs/free_bloc.dart';
import 'package:flutter_core_template/presentation/view/global/free_blocs/free_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupAppModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GlobalBloc()),
        BlocProvider(create: (_) => FreeBloc()),
      ],
      child: BlocBuilder<FreeBloc, FreeState>(
        builder: (context, state) {
          return MaterialApp(
            title: AppConstant.lomHatApp,
            theme: appThemeData(AppColorScheme(state.colorMode).generate()),
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
        },
      ),
    );
  }
}
