import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/factory/button_factory.dart';

class IOSButtonFactory implements ButtonFactory {
  @override
  Button create() {
    return IOSButton();
  }
}

class AndroidButtonFactory implements ButtonFactory {
  @override
  Button create() {
    return AndroidButton();
  }
}

abstract class Button {
  Widget get longButton;
  Widget get shortButton;
}

class IOSButton implements Button {
  @override
  // TODO: implement longButton
  Widget get longButton => throw UnimplementedError();

  @override
  // TODO: implement shortButton
  Widget get shortButton => throw UnimplementedError();
}

class AndroidButton implements Button {
  @override
  // TODO: implement longButton
  Widget get longButton => throw UnimplementedError();

  @override
  // TODO: implement shortButton
  Widget get shortButton => throw UnimplementedError();
}
