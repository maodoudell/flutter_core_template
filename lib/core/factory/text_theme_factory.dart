import 'package:flutter/material.dart';

abstract class TextThemeFactory {
  factory TextThemeFactory() {
    return SmallFont();
  }

  TextTheme generate();
}

class SmallFont implements TextThemeFactory {
  @override
  TextTheme generate() {
    // TODO: implement generate
    throw UnimplementedError();
  }
}

class MediumFont implements TextThemeFactory {
  @override
  TextTheme generate() {
    // TODO: implement generate
    throw UnimplementedError();
  }
}

class LargeFont implements TextThemeFactory {
  @override
  TextTheme generate() {
    // TODO: implement generate
    throw UnimplementedError();
  }
}
