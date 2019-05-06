import "package:flutter/material.dart";

import "../class/series.dart";

class SeriesItemList extends StatefulWidget {
  final bool _watched;
  final List<Series> _series;

  SeriesItemList(this._watched, this._series);

  @override
  State createState() => SeriesItemListState();

  List<Icon> createIcons(int n) { 
    List<Icon> ret = List<Icon>();

    for(int i = 0; i < n; i++)
      ret.add(Icon(Icons.star, color: Colors.yellow));
    
    if (n != 3)
      for(int i = 0; i < 3-n; i ++)
        ret.add(Icon(Icons.star_border, color: Color.fromRGBO(209, 209, 209, 1.0)));

    return ret;
  }
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
          DataCell(Row(children: widget.createIcons(serie.rate)))
        ]
      )).toList()
    );
  }
}