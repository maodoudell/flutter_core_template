import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/data/response/base_response.dart';

class MapResponse extends BaseResponse {
  final DataMap data;
  MapResponse({required this.data});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = data;
    json['success'] = success;
    json['status'] = status;
    json['message'] = message;
    return json;
  }

  factory MapResponse.fromJson(Map<String, dynamic> json) {
    MapResponse listResponse = MapResponse(
      data: json['data'] ?? {},
    );
    listResponse.success = json['success'];
    listResponse.status = json['status'];
    listResponse.message = json['message'];
    return listResponse;
  }
}
