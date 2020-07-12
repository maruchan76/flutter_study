import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(HelloApp());
}

class RandomWords1 extends StatefulWidget {
  @override
  _RandomWordsState1 createState() => _RandomWordsState1();
}

class _RandomWordsState1 extends State<RandomWords1> {
  @override
  Widget build(BuildContext context1) {
    final wordPair1 = WordPair.random();
    // return Container();
    return Text(wordPair1.asPascalCase);
  }
}

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context1) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Welcome to Flutter0",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter1"),
        ),
        body: Center(
          // child: const Text("Hello World"),
          // child: Text(wordPair.asPascalCase),
          child: RandomWords1(),
        ),
      ),
    );
  }
}