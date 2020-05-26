import 'package:flutter/material.dart';

void main() => runApp(NextMain());

class NextMain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(30, (index) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://flutter.dev/images/flutter-mono-81x100.png'
                  ),
                ),
                Text('Flutter $index',),
              ],
            );
          }),
        ),
      ),
    );
  }
}
