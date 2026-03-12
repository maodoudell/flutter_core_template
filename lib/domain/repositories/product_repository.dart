import 'package:flutter_core_template/core/utils/global/typedefs.dart';
import 'package:flutter_core_template/data/responses/list_response.dart';

abstract class ProductRepository {
  ResultFuture<ListResponse> getProduct();
}
