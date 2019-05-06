import "package:flutter/material.dart";

import "../componets/series_item_list.dart";
import "../class/series.dart";

class WatchedSeriesPage extends StatefulWidget {
  @override
  State createState() => WatchedSeriesPageState();

  List<Series> _listSeries = [Series("The Backyardigans", 3, true), Series("Turma da Mônica", 2, true)];

  List<Series> get listSeries => _listSeries;
}

class WatchedSeriesPageState extends State<WatchedSeriesPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(fit: StackFit.expand, children: [SeriesItemList(true, widget.listSeries)]),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add), backgroundColor: Color.fromRGBO(130, 0, 11, 1.0), onPressed: () {},),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      )
    );
  }
}