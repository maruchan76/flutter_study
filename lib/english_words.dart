import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(HelloApp());
}

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Welcome to Flutter0",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter1"),
        ),
        body: Center(
          // child: const Text("Hello World"),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}