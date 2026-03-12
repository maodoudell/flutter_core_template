import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/utils/app_navigator.dart';

class Loading {
  Loading._shareInstance();
  static final Loading _shared = Loading._shareInstance();
  factory Loading.instance() => _shared;

  void show() {
    showDialog(
      context: AppNavigator.context, // Use the global context
      barrierDismissible: false, // Prevents dismissal by tapping the barrier
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void hide() {
    // Pop the dialog using the global context
    if (AppNavigator.context != null) {
      Navigator.of(AppNavigator.context!).pop();
    }
  }
}
