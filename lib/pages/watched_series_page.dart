import "package:flutter/material.dart";

import "../componets/series_item_list.dart";

class WatchedSeriesPage extends StatefulWidget {
  List<SeriesItemList> _series = [SeriesItemList(true, "Serie 1"), SeriesItemList(true, "Serie 2")];

  @override
  State createState() => new WatchedSeriesPageState();
}

class WatchedSeriesPageState extends State<WatchedSeriesPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
    fit: StackFit.expand,
    children: <Widget>[
      new Column(children: widget._series)
      ]
    );
  }
}