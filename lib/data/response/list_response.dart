import 'package:flutter_core_template/data/response/base_response.dart';

class ListResponse extends BaseResponse {
  final List<dynamic> data;
  ListResponse({required this.data});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = data;
    json['success'] = success;
    json['status'] = status;
    json['message'] = message;
    return json;
  }

  factory ListResponse.fromJson(Map<String, dynamic> json) {
    ListResponse listResponse = ListResponse(
      data: List<dynamic>.from((json['data'] ?? [])),
    );
    listResponse.success = json['success'];
    listResponse.status = json['status'];
    listResponse.message = json['message'];
    return listResponse;
  }
}
