import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/screens/assist/assist_request_details.dart';


class AssistChat extends StatefulWidget {
  AssistChat({Key key}) : super(key: key);
  @override
  AssistChatState createState() => new AssistChatState();
}

class AssistChatState extends State<AssistChat> {

  @override
  Widget build(BuildContext context) {
    return LayoutSimple(
      layoutTitle: 'Assist (help)',
      layoutContent:
      ListView( children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 16),
          child: Text(
            "Assist I provide ",
            style:  TextStyle(
                backgroundColor: Color(0xff63E300),
                color: Colors.white
            ),
          ),
        ),
        Row( children: <Widget>[
          Text("Deadline    ",
              style: TextStyle(fontSize: 10, color:  Color(0xff9B9B9B))),
          Text("April 5 2020 11:10",
            style: TextStyle(fontSize: 10, color: Color(0xffEB6E61)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => AssistRequestDetails()));
              },
              child: Row( children: [Text("Show details of this",
                style: Theme.of(context).textTheme.body1,
              ),
                Icon(Icons.arrow_right),
              ],),
            ),
          ),
        ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 2),
          child: Text(
              "Assist description"
          ),
        ),
      ],),
    );
  }
}