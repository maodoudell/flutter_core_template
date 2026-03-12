import 'package:flutter/foundation.dart' show immutable;

typedef CloseLoadingScreen = bool Function();
typedef UpdateLoadingScreen = bool Function(String text);

@immutable
class LoadingViewController {
  final CloseLoadingScreen close; // to closs our dialog
  final UpdateLoadingScreen update; // to update anytext with in our dialog if needed

  const LoadingViewController({
    required this.close,
    required this.update,
  });
}
