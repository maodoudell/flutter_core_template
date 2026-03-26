import 'package:dio/dio.dart';
import 'package:flutter_core_template/core/utils/global/typedefs.dart';
import 'package:flutter_core_template/data/responses/map_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST("/api/v1/login")
  Future<MapResponse> login(@Body() DataMap map);
}
