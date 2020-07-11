import 'package:flutter/material.dart';

void main() {
  runApp(TestAppM1());
  // runApp(TestAppM2());
}

class TestAppM1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maruchan Demo1',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage11(title12: 'Flutter Maruchan Home Page'),
    );
  }
}

class MyHomePage11 extends StatefulWidget {
  MyHomePage11({Key key13, this.title12}) : super(key: key13);

  final String title12;

  @override
  _MyHomePageState14 createState() => _MyHomePageState14();
}

// class MyHomePage21 extends StatefulWidget {
//   MyHomePage21({Key key13, this.title12}) : super(key: key13);

//   final String title12;

//   @override
//   _MyHomePageState14 createState() => _MyHomePageState14();

// }

class _MyHomePageState14 extends State<MyHomePage11> {
  int _nxCn11 = 0;
  int _nxCn12 = 1;

  void _incrementCounter() {
    setState(() {
      if (_nxCn11 <= 50) {
        _nxCn11 = _nxCn12 + _nxCn11;
        _nxCn12++;
      } else {
        _nxCn11 = 0;
        _nxCn12 = 0;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _nxCn11 = 0;
      _nxCn12 = 0;
    });
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title12),
  //   ),
  //   body: Center,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title12),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_nxCn11',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: _incrementCounter,
      //     tooltip: 'Increment',
      //     child: Icon(Icons.add),
      //   ),
      // );
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            tooltip: "ADD",
            onPressed: _incrementCounter,
          ),
          FloatingActionButton(
            child: Icon(
              Icons.share,
              color: Colors.blue,
            ),
            tooltip: "Reset!!",
            onPressed: _resetCounter,
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context1) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             'You have pushed the button this many times:',
  //           ),
  //           Text(
  //             '$_nxCn11',
  //             style: Theme.of(context1).textTheme.display1,
  //           ),
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: Icon(Icons.add),
  //     ),
  //   );
  // }
}

