import 'package:flutter_core_template/core/utils/global/typedefs.dart';
import 'package:flutter_core_template/data/networks/auth_api.dart';
import 'package:flutter_core_template/data/responses/map_response.dart';
import 'package:flutter_core_template/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _api;
  AuthRepositoryImpl(this._api);

  @override
  ResultFuture<MapResponse> login(DataMap map) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  ResultFuture<MapResponse> register(DataMap map) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
