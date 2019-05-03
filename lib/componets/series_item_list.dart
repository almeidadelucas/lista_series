import "package:flutter/material.dart";

import "../class/series.dart";

class SeriesItemList extends StatefulWidget {
  final bool _watched;
  final List<Series> _series;

  SeriesItemList(this._watched, this._series);

  @override
  State createState() => new SeriesItemListState();

  List<Icon> createIcons(int n) { 
    List<Icon> ret = new List<Icon>();

    for(int i = 0; i < n; i++)
      ret.add(new Icon(Icons.star, color: Colors.yellow));
    
    if (n != 3)
      for(int i = 0; i < 3-n; i ++)
        ret.add(new Icon(Icons.star_border, color: new Color.fromRGBO(209, 209, 209, 1.0)));

    return ret;
  }
}

class SeriesItemListState extends State<SeriesItemList> {
  @override
  Widget build(BuildContext context) {
    return new DataTable(
      columns: <DataColumn>[
        new DataColumn(label: new Text("Série", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black))),
        new DataColumn(label: new Text("Avaliação", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)))
      ],
      rows: widget._series.map((serie) => DataRow(
        cells: [
          new DataCell(new Text(serie.title)),
          new DataCell(new Row(children: widget.createIcons(serie.rate)))
        ]
      )).toList()
    );
  }
}