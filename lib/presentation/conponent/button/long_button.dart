import 'package:flutter/material.dart';
import 'package:flutter_core_template/core/util/themes/color/app_color.dart';

abstract class ActionButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? background;
  final VoidCallback? onTap;

  ActionButton({required this.text, this.width, this.height, this.background, required this.onTap});
}

class LongButton extends ActionButton {
  LongButton({required super.text, required super.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        height: height ?? 50,
        alignment: Alignment.center,
        width: width ?? double.maxFinite,
        decoration: BoxDecoration(
          color: background ?? const Color(0xFFD1A661),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class ShortButton extends ActionButton {
  ShortButton({required super.text, required super.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
