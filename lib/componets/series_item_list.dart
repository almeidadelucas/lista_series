import "package:flutter/material.dart";

import "../class/series.dart";
import 'rate.dart';

class SeriesItemList extends StatefulWidget {
  final bool _watched;
  final List<Series> _series;

  SeriesItemList(this._watched, this._series);

  @override
  State createState() => SeriesItemListState();
}

class SeriesItemListState extends State<SeriesItemList> {

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text("Série", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black))),
        DataColumn(label: Text("Avaliação", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)))
      ],
      rows: widget._series.map((serie) => DataRow(
        cells: [
          DataCell(Text(serie.title)),
          DataCell(Rate(rate: serie.rate))
        ]
      )).toList()
    );
  }
}