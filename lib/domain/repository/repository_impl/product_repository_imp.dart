import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/data/network/failure.dart';
import 'package:flutter_core_template/data/response/list_response.dart';
import 'package:flutter_core_template/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  Dio dio;
  ProductRepositoryImpl(this.dio);

  @override
  ResultFuture<ListResponse> getProduct() async {
    try {
      final response = await dio.get("https://dummyjson.com/products");
      var json = {"data": response.data['products']};
      ListResponse r = ListResponse.fromJson(json);
      return right(r);
    } on DioException catch (e) {
      int? code = e.response?.statusCode;
      String? message = e.message;
      return left(Failure(code, message));
    }
    // catch(e){
    //   return left(Failure(code, e.toString()));
    // }
  }
}
