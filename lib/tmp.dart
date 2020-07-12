// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() {
//   runApp(HelloApp());
// }

// class RandomWords1 extends StatefulWidget {
//   @override
//   _RandomWordsState1 createState() => _RandomWordsState1();
// }

// class _RandomWordsState1 extends State<RandomWords1> {
//   // final List<WordPair> _suggestions1 = <WordPair>[];
//   // final TextStyle _biggerFont1 = const TextStyle(fontSize: 3);
//   final _suggestions1 = <WordPair>[];
//   final _saved = Set<WordPair>();
//   final _biggerFont1 = TextStyle(fontSize: 18.0);

//   Widget _buildSuggestions1() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemBuilder: (BuildContext _context, int i) {
//         if (i.isOdd) {
//           return Divider();
//         }
//         final int index = i ~/ 2;
//         if (index >= _suggestions1.length) {
//           _suggestions1.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions1[index]);
//       }
//     );
//   }
//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont1,
//       ),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context1) {
//     return Scaffold (
//       appBar: AppBar (
//         title: Text("Startup Name Generator1"),
//         actions: [
//           IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
//         ]
//       ),
//       body:  _buildSuggestions1(),
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         builder: (BuildContext context) {
//           final tiles = _saved.map(
//             (WordPair pair) {
//               return ListTile(
//                 title: Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final divided = ListTile.divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();

//           return Scaffold(
//             appBar: AppBar(
//               title: Text('Saved Suggestions'),
//             ),
//             body: ListView(children: divided),
//           );
//         },
//       ),
//     );
//   }
// }

// class HelloApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context1) {
//     return MaterialApp(
//       title: "Welcome to Flutter0",
//       home: RandomWords1(),
//     );
//   }
// }