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
          fontSize: 250.0,
        ),
      ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ButtonTheme(
            minWidth: 100.0,
            height: 100.0,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0)),
            buttonColor: Colors.blue,
            child: RaisedButton(
            child: Text(
              "+",
              style: TextStyle(fontSize: 50.0,color: Colors.black,),
              ),
            onPressed: (){
              setState(() {
                counter++;
              });
            },
          )
          ),
          ButtonTheme(
            minWidth: 100.0,
            height: 100.0,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(60.0)),
            buttonColor: Colors.blue,
            child: RaisedButton(
            child: Text(
              "-",
              style: TextStyle(fontSize: 50.0,color: Colors.black,),
              ),
            onPressed: (){
              setState(() {
                counter--;
              });
            },
          )
          ),
        ],
      ),
      SizedBox(height: 15.0),
      ButtonTheme(
            minWidth: 300.0,
            height: 100.0,
            buttonColor: Colors.black,
            child: RaisedButton(
            child: Text(
              "RESET",
              style: TextStyle(fontSize: 50.0,color: Colors.red),
              ),
            onPressed: (){
              setState(() {
                counter=0;
              });
            },
          )
          ),
        ],
      ),
      
  ],
  )
    );
  }
}
