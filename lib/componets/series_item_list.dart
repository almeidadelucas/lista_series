import "package:flutter/material.dart";

class SeriesItemList extends StatelessWidget {
  final bool _watched;
  final String _title;

  SeriesItemList(this._watched, this._title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 20.0),
        child: new Center(child: new Text(this._title, style: new TextStyle(color: Colors.black, fontSize: 20.0)))
      ),
      decoration: new BoxDecoration(
        border: new BorderDirectional(bottom: BorderSide(width: 2.0, color: Color.fromRGBO(220, 220, 220, 1.0)))
      ),
    );
  }
}