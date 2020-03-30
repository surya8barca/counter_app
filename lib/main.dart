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

  int counter=0;
   
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
      backgroundColor: Colors.red,
      centerTitle: true,
    ),
  body: Column(
    children: <Widget>[
      Text(
        '$counter',
        style: TextStyle(
          fontSize: 500.0,
        ),
      ),
  ],
  )
    );
  }
}
