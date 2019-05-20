
import 'package:flutter/material.dart';

class Rate extends StatefulWidget {
  final int rate;
  final bool editable;
  final void Function(int) onChange;

  const Rate({Key key, @required this.rate, this.editable = false, this.onChange}) : super(key: key);

  @override
  _RateState createState() => _RateState(rate, editable, onChange);
}

class _RateState extends State<Rate> {
  int rate;

  final bool editable;
  final void Function(int) onChange;

  _RateState(this.rate, this.editable, this.onChange);
  
  Widget createIcon(int number, bool active) {
    IconData iconData = active ? Icons.star : Icons.star_border;
    Color color = active ? Colors.yellow : Color.fromRGBO(209, 209, 209, 1.0);
    return GestureDetector(
      child: Icon(iconData, color: color),
      onTap: () => editable ? this.updateRate(number) : {},
    );
  }

  void updateRate(int number) {
    int newRate = number + 1;
    this.setState(() => rate = newRate);
    if (onChange != null) {
      onChange(newRate);
    }
  }

  List<Widget> createIcons(int n) { 
    List<Widget> ret = [];

    for(int i = 0; i < n; i++)
      ret.add(this.createIcon(i, true));
    for(int i = 0; i < 3-n; i ++)
      ret.add(this.createIcon(n + i, false));

    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: createIcons(rate),
    );
  }
}