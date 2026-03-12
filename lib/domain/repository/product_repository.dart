import 'package:flutter_core_template/core/util/global/typedefs.dart';
import 'package:flutter_core_template/data/response/list_response.dart';

abstract class ProductRepository {
  ResultFuture<ListResponse> getProduct();
}
