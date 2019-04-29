import "package:flutter/material.dart";

class MySeriesPage extends StatefulWidget {
  @override
  State createState() => new MySeriesPageState();
}

class MySeriesPageState extends State<MySeriesPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          AppBar(
            title: Text('Lista de Series'),
            actions: <Widget>[IconButton(icon: Icon(Icons.menu))],
            backgroundColor: Color.fromRGBO(130,0,11, 1.0),
          ),
        ],
      )
    );
  }
}