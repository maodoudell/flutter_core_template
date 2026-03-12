import 'package:flutter_core_template/core/configuration/app_dependency_injection.dart';
import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/data/response/map_response.dart';
import 'package:flutter_core_template/domain/repository/auth_repository.dart';

class AuthUseCase {
  final AuthRepository _repository = getIt<AuthRepository>();

  ResultFuture<MapResponse> login(DataMap map) async => _repository.login(map);

  ResultFuture<MapResponse> register(DataMap map) async => _repository.register(map);
}
