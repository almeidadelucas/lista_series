import "package:flutter/material.dart";

import "../componets/series_item_list.dart";
import "../class/series.dart";

class WatchedSeriesPage extends StatefulWidget {
  @override
  State createState() => WatchedSeriesPageState();
}

class WatchedSeriesPageState extends State<WatchedSeriesPage> {
  List<Series> seriesList = [Series("The Backyardigans", 3, true), Series("Turma da Mônica", 2, true)];

  String _seriesToAdd;
  int    _rateToAdd;

  @override
  void initState() {
    super.initState();
  }

  Future _askUser() async {
    await showDialog(
      context: context,
      child: SimpleDialog(
        title: Center(child:Text("Adicione uma série")),
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),
          TextField(autofocus: true, onSubmitted: (String str) {_seriesToAdd = str;}),
          TextField(onSubmitted: (String str) {_rateToAdd = str as int;}),
          IconButton(icon: Icon(Icons.done), color: Color.fromRGBO(130, 0, 11, 1.0), iconSize: 30.0, onPressed: () {
            setState(() {
              seriesList.add(Series(_seriesToAdd, _rateToAdd, true));
            });
          })
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(fit: StackFit.expand, children: [SeriesItemList(true, seriesList)]),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add), backgroundColor: Color.fromRGBO(130, 0, 11, 1.0), onPressed: () => _askUser(),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      )
    );
  }
}