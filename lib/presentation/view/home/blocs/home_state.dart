import 'package:flutter/cupertino.dart';
import 'package:flutter_core_template/core/util/global/app_state.dart';
import 'package:flutter_core_template/data/models/product_model.dart';

class HomeSate {
  final AppState<List<ProductModel>> appState;

  HomeSate({required this.appState});

  HomeSate copyWith({AppState<List<ProductModel>>? appState}) {
    return HomeSate(appState: appState ?? this.appState);
  }
}
