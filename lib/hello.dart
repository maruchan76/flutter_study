import 'package:flutter/material.dart';

void main() {
  runApp(HelloApp());
}

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter0",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Flutter1"),
        ),
        body: const Center(
          child: const Text("Hello World"),
        ),
      ),
    );
  }
}