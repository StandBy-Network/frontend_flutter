import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAssistItem extends StatelessWidget {
  final String id;
  final String date;
  final String description;
  final String status;
  final bool isIAskFor;

  MyAssistItem(
      this.id,
      this.date,
      this.description,
      this.status,
      this.isIAskFor
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
                  padding: EdgeInsets.only(left: 12, bottom: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(date),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 4),
                        child:
                        Text(description,
                          style: Theme.of(context).textTheme.title,),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        color: isIAskFor == true ? Color(0xffD50000) : Color(0xff81E422),
                        child: Text(isIAskFor == true ? 'Segítséget kérek': 'Segítséget nyújtok',
                          style: TextStyle(fontSize: 12, color: Colors.white),),
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(status, style: Theme.of(context).textTheme.display1,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
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