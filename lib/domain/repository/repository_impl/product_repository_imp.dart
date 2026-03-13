import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/core/util/print/app_print.dart';
import 'package:flutter_core_template/data/network/failure.dart';
import 'package:flutter_core_template/data/response/list_response.dart';
import 'package:flutter_core_template/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  Dio dio;
  ProductRepositoryImpl(this.dio);

  @override
  ResultFuture<ListResponse> getProduct(DataMap map) async {
    try {
      String url = "https://dummyjson.com/products";
      if (map['limit'] != null && map['skip'] != null) {
        url = url + "?limit=${map['limit']}&skip=${map['skip']}";
      }

      dio.options = BaseOptions(
        validateStatus: (status) {
          return status != null && status < 300;
        },
      );
      final response = await dio.get(url);
      var json = {"data": response.data['products']};
      ListResponse r = ListResponse.fromJson(json);
      // static const int ok = 200;
      // static const int created = 201;
      // static const int accepted = 202;
      // List<int> codes = [HttpStatus.ok, HttpStatus.created, HttpStatus.accepted];
      // if (codes.contains(response.statusCode)) {
      //   var json = {"data": response.data['products']};
      //   ListResponse r = ListResponse.fromJson(json);
      return right(r);
      // } else {
      //   return left(Failure(response.statusCode, response.statusMessage));
      // }
    } on DioException catch (e) {
      print("TYPE: ${e.type}");
      print("STATUS: ${e.response?.statusCode}");
      print("DATA: ${e.response?.data}");
      print("MESSAGE: ${e.message}");
      int? code = e.response?.statusCode;
      String? message = e.message;
      return left(Failure(code, message));
    }
    // catch(e){
    //   return left(Failure(code, e.toString()));
    // }
  }
}
