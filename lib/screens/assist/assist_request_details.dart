import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontend_flutter/components/dropdown.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/screens/assist/assists.dart';
import '../home.dart';


class AssistRequestDetails extends StatefulWidget {
  AssistRequestDetails({Key key}) : super(key: key);
  @override
  AssistRequestDetailsState createState() => new AssistRequestDetailsState();
}

class AssistRequestDetailsState extends State<AssistRequestDetails> {

  @override
  Widget build(BuildContext context) {
    return LayoutSimple(
      layoutTitle: 'Assist details',
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
          )
        ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 2),
          child: Text(
              "Assist description"
          ),
        ),
        Text(  'I need help: \n'
            '- medicine \n'
            '- shopping - write here items \n'
            '- childcare \n'
            '- I just would love to talk to someone \n',
          style: TextStyle(color: Color(0xff9B9B9B), fontSize: 20),
        ),
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row( children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Color(0xffC4C4C4),),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Assist needed by",
                            style: TextStyle(color: Colors.black, fontSize: 16) ),
                        Text("John Big",
                            style: TextStyle(color: Colors.black, fontSize: 26))
                      ],
                    ),],
                  ),
                  Row( children: [
                    Icon(Icons.phone, color: Color(0xffD50000)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 24, 0),
                      child: Text("CALL"),
                    ),
                  ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: Text("April 4 2020 8:02", style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                child: Text("Chicago City Center, Highway 2", style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ],
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: ButtonTheme(
                  minWidth: 160.0,
                  height: 60.0,
                  child: RaisedButton(
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Do you decline your help to him/her?"),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                              FlatButton(
                                child: Row( children: [
                                  Icon(Icons.cancel, color: Colors.white),
                                  Text("YES", style: TextStyle(color: Colors.white)),
                                ],
                          ),
                                onPressed: () {
                                  Navigator.push(context, new MaterialPageRoute(
                                      builder: (context) => Assists()));
                                }),
                              FlatButton(
                                child: Text("CANCEL", style: TextStyle(color: Colors.white)),
                                onPressed: () {Navigator.of(context).pop();},
                              ),
                            ],
                            ),
                            backgroundColor: Color(0xff9B9B9B),
                          );
                        },
                      );
                    },
                    color: Theme.of(context).indicatorColor,
                    child:
                    Row( children: [
                      Icon(Icons.arrow_back, color: Colors.white),
                      Text(
                        "Back",
                        style:  Theme.of(context).textTheme.caption,
                      )
                    ],
                    ),
                  ),
                ),
              ),
            ]),
      ]),
    );
  }
}