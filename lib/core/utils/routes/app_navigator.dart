import 'package:flutter/material.dart';

class AppNavigator {
  static final navigator = GlobalKey<NavigatorState>();
  static BuildContext get context => navigator.currentContext!;
  static NavigatorState get state => navigator.currentState!;
  static void pushName(String route, {dynamic arguments}) => state.pushNamedIfNotCurrent(route, arguments: arguments);
  static void pushReplacedNamed(String route, {dynamic arguments}) => state.pushReplacedNamedIfNotCurrent(route, arguments: arguments);
}

extension NavigatorStateExtension on NavigatorState {
  void pushNamedIfNotCurrent(String routeName, {dynamic arguments}) {
    if (!isCurrent(routeName)) {
      pushNamed(routeName, arguments: arguments);
    }
  }

  void pushReplacedNamedIfNotCurrent(String routeName, {dynamic arguments}) {
    if (!isCurrent(routeName)) {
      pushReplacementNamed(routeName, arguments: arguments);
    }
  }

  bool isCurrent(String routeName) {
    bool isCurrent = false;
    popUntil((route) {
      if (route.settings.name == routeName) {
        isCurrent = true;
      }
      return true;
    });
    return isCurrent;
  }
}
