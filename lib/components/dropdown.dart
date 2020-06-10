import 'package:flutter/material.dart';


class DropDown extends StatefulWidget {
  DropDown({Key key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'Budapest';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Color(0xffD50000)),
      underline: Container(
        height: 2,
        color: Color(0xffD50000),
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Budapest', 'Szada', 'Genf', 'Vevey']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}