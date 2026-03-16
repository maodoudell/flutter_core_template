import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_core_template/core/util/route/app_navigator.dart';
import 'package:flutter_core_template/core/util/themes/color/app_color.dart';

enum EnumToast { SUCCESS, ERROR, WARNING, INFO }

class Toast {
  static void pop({
    required String? text,
    EnumToast state = EnumToast.SUCCESS,
    SnackBarAction? action,
  }) {
    late Color background;
    late Color color;
    late IconData icon;
    // OverlayEntry? overlayEntry;
    // OverlayState overlayState = Overlay.of(XNavigator.context);
    // overlayEntry = OverlayEntry(
    //   builder: (BuildContext context) {
    //     return TopToast(
    //       'This is a custom toast at the top!',
    //       onTap: () {R
    //         overlayEntry?.remove();
    //       },
    //     );
    //   },
    // );

    // overlayState.insert(overlayEntry);

    // Future.delayed(const Duration(seconds: 2), () {
    //   overlayEntry?.remove();
    // });
    // return;
    switch (state) {
      case EnumToast.SUCCESS:
        icon = Icons.check;
        color = appColor.onPrimary;
        background = appColor.primary;
        break;
      case EnumToast.ERROR:
        icon = Icons.error_outline;
        color = appColor.onError;
        background = appColor.error;
        break;
      case EnumToast.WARNING:
        icon = Icons.warning;
        color = Colors.white;
        background = Colors.yellowAccent;
        break;
      case EnumToast.INFO:
        icon = Icons.warning;
        color = Colors.white;
        background = Colors.yellowAccent;
        break;
    }
    ScaffoldMessenger.of(AppNavigator.context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 5),
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          margin: EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Row(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  text ?? 'Success',
                  style: TextStyle(color: color, fontSize: 15),
                ),
              ),
            ],
          ),
          action: action,
        ),
      );
  }

  static void popTop({
    required String? text,
    EnumToast state = EnumToast.SUCCESS,
  }) {
    late Color background;
    late Color color;
    late IconData icon;

    switch (state) {
      case EnumToast.SUCCESS:
        icon = Icons.check;
        color = appColor.onPrimary;
        background = appColor.primary;
        break;
      case EnumToast.ERROR:
        icon = Icons.error_outline;
        color = appColor.onError;
        background = appColor.error;
        break;
      case EnumToast.WARNING:
        icon = Icons.warning_amber_rounded;
        color = appColor.onErrorContainer;
        background = appColor.errorContainer;
        break;
      case EnumToast.INFO:
        icon = Icons.info_outline_rounded;
        color = appColor.onSecondary;
        background = appColor.secondary;
        break;
    }
    ScaffoldMessenger.of(AppNavigator.context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(AppNavigator.context).size.height - 160,
            left: 10,
            right: 10,
          ),
          duration: const Duration(seconds: 5),
          backgroundColor: background,
          // shape: RoundedRectangleBorder15(),
          content: Row(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  text ?? 'Success',
                  style: TextStyle(color: color),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
