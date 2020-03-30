import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  )
);

  class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


   
    @override
    Widget build(BuildContext context) {
      return Scaffold(
    appBar: AppBar(
      title: Text(
      'Counter App',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25.0
      ),
    ),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
  body: Center(
    child: Image.network('https://stucocrce.com/img/spbsec.jpeg'),
    ),
    backgroundColor: Colors.black,
    floatingActionButton: FloatingActionButton(onPressed: null,
      child: Expanded(child: Text("Best")),
      backgroundColor: Colors.red,
       )
    );
  }
}
