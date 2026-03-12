import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/data/network/auth_api.dart';
import 'package:flutter_core_template/data/response/map_response.dart';
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
