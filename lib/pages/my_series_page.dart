import "package:flutter/material.dart";

import "./series_to_watch_page.dart";
import "./watched_series_page.dart";

class MySeriesPage extends StatefulWidget {
  @override
  State createState() => new MySeriesPageState();
}

class MySeriesPageState extends State<MySeriesPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Já assisti"),
                Tab(text: "Quero assistir")
              ],
            ),
            title: Text('Lista Series'),
            backgroundColor: Color.fromRGBO(130, 0, 11, 1.0),
          ),
          body: TabBarView(
            children: [
              new WatchedSeriesPage(),
              new SeriesToWatchPage()
            ],
          ),
        ),
      ),
    );
  }
}