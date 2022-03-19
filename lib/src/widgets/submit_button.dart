import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String? inputText;
  final Function updateDisplay;
  final Function updateInput;
  final TextEditingController controller;
  const SubmitButton(
      {required this.inputText,
      required this.updateDisplay,
      required this.updateInput,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        updateDisplay(inputText);
        controller.clear();
        updateInput('');
      },
      child: const Text('Submit'),
    );
  }
}
