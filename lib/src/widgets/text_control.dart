import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function updateInputText;
  final TextEditingController controller;
  const TextControl(
      {required this.updateInputText, required this.controller, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (text) => updateInputText(text),
    );
  }
}
