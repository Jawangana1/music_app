import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Expanded buildkey({Color? color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {},
        child: const Text(
          'playme',
          style: TextStyle(
            backgroundColor: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red),
              buildkey(color: Colors.yellow),
              buildkey(color: Colors.purple),
              buildkey(color: Colors.orange),
              buildkey(color: Colors.blue),
              buildkey(color: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
