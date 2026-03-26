import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

var logger = Logger(printer: PrettyPrinter(methodCount: 1, excludePaths: ["package:flutter_core_template/core/util/print/app_print.dart"]));

void appPrint(Object? message, {bool error = false, bool warning = false, bool debug = false}) {
  if (kDebugMode) {
    if (error) {
      logger.e(message);
    } else if (warning) {
      logger.w(message);
    } else if (debug) {
      logger.d(message);
    } else {
      logger.f(message);
    }
  }
}
