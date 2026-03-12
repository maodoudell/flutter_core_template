import 'package:flutter_core_template/core/utils/global/typedefs.dart';
import 'package:flutter_core_template/data/responses/map_response.dart';

abstract class AuthRepository {
  ResultFuture<MapResponse> login(DataMap map);

  ResultFuture<MapResponse> register(DataMap map);
}
