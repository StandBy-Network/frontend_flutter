import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssistItem extends StatelessWidget {
  final String id;
  final String date;
  final String description;
  final String status;

  AssistItem(
      @required this.id,
      @required this.date,
      @required this.description,
      @required this.status,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178.0,
      height: 80.0,
      child: GestureDetector(
        onTap: () => {},
        child: Card(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(date),
                      Text(description,
                        style: Theme.of(context).textTheme.title,),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: FittedBox(
                        child: Text(status),
                        fit: BoxFit.scaleDown,),
                      maxRadius: 24,
                      backgroundColor: status == 'NEW' ? Colors.yellow : status == 'ON' ? Colors.red : Colors.green ,
                      foregroundColor: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}