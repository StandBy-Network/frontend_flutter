import 'package:flutter/material.dart';

class ToggleSelect extends StatefulWidget {
  ToggleSelect({Key key}) : super(key: key);

  @override
  _ToggleSelectState createState() => _ToggleSelectState();
}

class _ToggleSelectState extends State<ToggleSelect> {
  var isSelected = [false, false, false, false, true];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      color: Theme.of(context).indicatorColor,
      selectedColor: Colors.white,
      fillColor: Theme.of(context).accentColor,
      children: [
        Text('   1 hr   '),
        Text('  4 hrs   '),
        Text('  1 day   '),
        Text('  2 days  '),
        Text('  1 week  '),
      ],
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0; buttonIndex <
              isSelected.length; buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }
}