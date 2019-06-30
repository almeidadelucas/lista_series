class Series {
  final String _title;
  final bool _watched;
  final int _rate;  

  Series(this._title, this._rate, this._watched);

  String get title => _title;
  int get rate => _rate;
}