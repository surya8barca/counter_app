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
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Center(child: Text(
        '$counter',
        style: TextStyle(
          fontSize: 200.0,
        ),
      ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            child: Text(
              "+",
              style: TextStyle(fontSize: 50.0,color: Colors.black,),
              ),
            onPressed: (){
              setState(() {
                counter++;
              });
            },
          ),
          FloatingActionButton(
            child: Text(
              "-",
              style: TextStyle(fontSize: 50.0,color: Colors.black,),
              ),
            onPressed: (){
              setState(() {
                counter--;
              });
            },
          ),
        ],
      ),
      SizedBox(height: 50.0),
      RaisedButton(
            child: Text(
              "RESET"
              ),
            onPressed: (){
              setState(() {
                counter=0;
              });
            },
          ),
        ],

      ),
      
  ],
  )
    );
  }
}
