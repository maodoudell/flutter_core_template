import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final String label;
  final String hintText;
  const TextInput({this.padding, this.margin, this.label = '', this.hintText = '', required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      child: TextFormField(
        controller: controller,
        decoration: InputDecorationStyle.textFieldStyle(labelTextStr: label, hintTextStr: hintText),
      ),
    );
  }
}

//CommonStyle
class InputDecorationStyle {
  static InputDecoration textFieldStyle({
    String labelTextStr = "",
    String hintTextStr = "",
    EdgeInsets contentPadding = const EdgeInsets.all(12),
  }) {
    return InputDecoration(
      contentPadding: contentPadding,
      labelText: labelTextStr,
      hintText: hintTextStr,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
