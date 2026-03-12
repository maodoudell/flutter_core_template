import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_core_template/presentation/views/base/base_view.dart';


class HomeView extends BaseView{
  const HomeView({super.key});
  @override
  State<StatefulWidget> createState()=> _HomeViewState();

}

class _HomeViewState extends BaseViewState<HomeView> with BaseViewMixin{
  @override
  String appBarTitle() {
    // TODO: implement appBarTitle
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
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
  Widget body() {
    // TODO: implement body
    throw UnimplementedError();
  }
}
