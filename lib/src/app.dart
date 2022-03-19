import 'package:flutter/material.dart';
import 'package:udemy_flutter_academind_assign01/src/widgets/submit_button.dart';
import 'widgets/text_control.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String dummy = 'Dummy Display Text';
  late String displayText;
  String? inputText;

  _AppState() {
    displayText = dummy;
  }

  void updateInput(String? input) {
    setState(() {
      inputText = input;
    });
  }

  void updateDisplay(String? input) {
    if (input == null || input.isEmpty) {
      input = dummy;
    }
    setState(() {
      displayText = input!;
    });
  }

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Udemy Flutter Academind - Assgn 01'),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                displayText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
              TextControl(
                controller: _controller,
                updateInputText: updateInput,
              ),
              SubmitButton(
                updateDisplay: updateDisplay,
                controller: _controller,
                inputText: inputText,
                updateInput: updateInput,
              )
            ],
          ),
        ),
      ),
    );
  }
}
