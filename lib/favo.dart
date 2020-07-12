// ============================================================
// Import 文
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
// ============================================================

// ============================================================
// main 関数
void main() => runApp(HelloApp());
  // void main() {
  //   runApp(HelloApp());
  // }
// ============================================================

// ============================================================
// HelloApp 関数に渡される Widget(アプリケーションのメインウィジェット)
class HelloApp extends StatelessWidget {  // 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // アプリの中身の名前かな
      title: 'Startup Name Generators0',
      // 色の変更
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: RandomWords(),
    );
  }
}
// ============================================================

// ============================================================
class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = TextStyle(fontSize: 18.0);

// ------------------------------------------------------------
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow1(_suggestions[index]);
        });
  }
// ------------------------------------------------------------

// ------------------------------------------------------------
  Widget _buildRow1(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    var icon1 = Icon(
            // icon1を変更する場所
            alreadySaved ? Icons.bookmark : Icons.bookmark_border,
            color: alreadySaved ? Colors.blue : null,
          );
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
          trailing: icon1,
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
// ------------------------------------------------------------

// ------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ヘッダーの名前を変更
        title: Text('Startup Name Generator1'),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
// ------------------------------------------------------------

// ------------------------------------------------------------
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }
// ------------------------------------------------------------
}
// ============================================================

// ============================================================
class RandomWords extends StatefulWidget {
  @override
  State<RandomWords> createState() => _RandomWordsState();
}
// ============================================================