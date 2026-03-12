import 'package:flutter/material.dart';
import 'package:flutter_core_template/presentation/view/base/base_view.dart';

class HomeView extends BaseView {
  const HomeView({super.key});
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends BaseViewState<HomeView> with BaseViewMixin {
  @override
  String appBarTitle() {
    return "Home View";
  }

  @override
  void onClickBackButton() {
    // TODO: implement onClickBackButton
  }

  @override
  void onClickCart() {
    // TODO: implement onClickCart
  }

  @override
  bool get isBackButton => false;

  @override
  Widget body() {
    // TODO: implement body
    return Column(
      children: [Text("This is body")],
    );
  }
}
