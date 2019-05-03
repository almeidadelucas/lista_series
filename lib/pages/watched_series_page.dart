import "package:flutter/material.dart";

import "../componets/series_item_list.dart";
import "../class/series.dart";

class WatchedSeriesPage extends StatefulWidget {
  @override
  State createState() => new WatchedSeriesPageState();
}

class WatchedSeriesPageState extends State<WatchedSeriesPage> {
  @override
  Widget build(BuildContext context) {
    return new SeriesItemList(true, [
      new Series("The Backyardigans", 3, true), 
      new Series("Turma da Mônica", 2, true)
    ]);
  }
}