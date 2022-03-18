import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String dummy = 'Dummy Display Text';
  String displayText = 'Dummy Display Text';
  String? inputText;

  void updateInput(String? input) {
    setState(() {
      inputText = input;
    });
  }

  void updateDisplay(String? input) {
    setState(() {
      displayText = input ?? dummy;
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
        body: Column(
          children: [
            Text(
              displayText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            TextField(
              controller: _controller,
              onChanged: (text) => updateInput(text),
            ),
            ElevatedButton(
              onPressed: () {
                updateDisplay(inputText);
                _controller.clear();
                setState(() => inputText = '');
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
