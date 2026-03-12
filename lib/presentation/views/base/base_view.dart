import 'package:flutter/material.dart';

abstract class BaseView extends StatefulWidget {
  const BaseView({super.key});
}

abstract class BaseViewState<Page extends BaseView> extends State<Page> {
  bool _isCart = true;

  String appBarTitle();

  void onClickBackButton();

  void onClickCart();

  bool get isBackButton => true;

  void isCartButton(bool isCart) {
    _isCart = isCart;
  }
}

mixin BaseViewMixin<Page extends BaseView> on BaseViewState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue.shade200, Colors.pink.shade300])),
        ),
        title: Text(
          appBarTitle(),
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        leading: isBackButton
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  onClickBackButton();
                },
              )
            : Container(),
        actions: [
          _isCart
              ? IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    onClickCart();
                  },
                )
              : Container()
        ],
      ),
      body: Container(
        color: Colors.white,
        child: body(),
      ),
    );
  }

  Widget body();
}
