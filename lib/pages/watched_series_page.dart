import "package:flutter/material.dart";

import "../class/series.dart";
import '../componets/rate.dart';
import "../componets/series_item_list.dart";

class WatchedSeriesPage extends StatefulWidget {
  @override
  State createState() => WatchedSeriesPageState();
}

class WatchedSeriesPageState extends State < WatchedSeriesPage > {
  List < Series > seriesList = [Series("The Backyardigans", 3, true), Series("Turma da Mônica", 2, true)];

  TextEditingController _seriesNameToAdd = TextEditingController();
  int _seriesRateToAdd = 0;

  @override
  void initState() {
    super.initState();
  }

  _openDialog() {
    _seriesNameToAdd.clear();
    _seriesRateToAdd = 0;
    showDialog(
      context: context,
      child: SimpleDialog(
        title: Center(child: Text("Adicione uma série")),
        children: < Widget > [
          Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: < Widget > [
                TextField(autofocus: true, controller: _seriesNameToAdd, decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Título:")),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Rate(rate: 0, editable: true, onChange: (rate) => setState(() => _seriesRateToAdd = rate)),
                IconButton(icon: Icon(Icons.done), color: Color.fromRGBO(130, 0, 11, 1.0), iconSize: 30.0, onPressed: () {
                  setState(() {
                    String name = _seriesNameToAdd.value.text;
                    seriesList.add(Series(name, _seriesRateToAdd, true));
                  });
                  Navigator.of(context).pop();
                })
              ],
            ), ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(fit: StackFit.expand, children: [SeriesItemList(true, seriesList)]),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(130, 0, 11, 1.0),
          onPressed: () => _openDialog()
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      )
    );
  }
}