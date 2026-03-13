import 'package:flutter_core_template/core/service/repo/app_preference.dart';
import 'package:flutter_core_template/core/service/repo/app_preference_impl.dart';
import 'package:flutter_core_template/data/network/auth_api.dart';
import 'package:flutter_core_template/domain/repository/repository_impl/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_core_template/core/factory/dio_factory.dart';
import 'package:flutter_core_template/domain/repository/product_repository.dart';
import 'package:flutter_core_template/domain/repository/repository_impl/product_repository_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  // shared prefs instance
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  getIt.registerLazySingleton<AppPreference>(() => AppPreferenceImpl(getIt()));

  getIt.registerFactory<AuthRepositoryImpl>(() => AuthRepositoryImpl(getIt()));
  await setUpDio();
}

Future<void> setUpDio() async {
  getIt.registerFactory<DioClient>(() => DioClient(getIt()));
  final dio = getIt<DioClient>().get();
  getIt.registerFactory<AuthApi>(() => AuthApi(dio));
  getIt.registerFactory<ProductRepository>(() => ProductRepositoryImpl(dio));
}

Future<void> resetAppModule() async {
  getIt.reset(dispose: false);
  await setupAppModule();
}
