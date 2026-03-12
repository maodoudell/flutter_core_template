import 'package:get_it/get_it.dart';
import 'package:flutter_core_template/core/factory/dio_factory.dart';
import 'package:flutter_core_template/domain/repositories/app_preference.dart';
import 'package:flutter_core_template/domain/repositories/app_preference_imp.dart';
import 'package:flutter_core_template/domain/repositories/product_repository.dart';
import 'package:flutter_core_template/domain/repositories/product_repository_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  // shared prefs instance
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  getIt.registerLazySingleton<AppPreference>(() => AppPreferenceImpl(getIt()));
  await setUpDio();
}

Future<void> setUpDio() async {
  getIt.registerFactory<DioFactory>(() => DioFactory(getIt()));
  final dio = getIt<DioFactory>().getDio();
  getIt.registerFactory<ProductRepository>(() => ProductRepositoryImpl(dio));
}

Future<void> resetAppModule() async {
  getIt.reset(dispose: false);
  await setupAppModule();
}
