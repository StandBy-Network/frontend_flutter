import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/dropdown.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/components/toggle_select.dart';
import '../home.dart';


class RequestAssist extends StatefulWidget {
  RequestAssist({Key key}) : super(key: key);
  @override
  RequestAssistState createState() => new RequestAssistState();
}

class RequestAssistState extends State<RequestAssist> {

  bool monVal = false;


  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
      layoutTitle: 'I ask for help, assist nearby',
      layoutContent:
      ListView( children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('What help I need - please select' ,
              style: Theme.of(context).textTheme.display2
          ),
        ),
        DropDown(),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text('How fast do I need help?' ,
              style: Theme.of(context).textTheme.display2
          ),
        ),
        ToggleSelect(),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('Note',
              style: Theme.of(context).textTheme.display2),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Note about the help you need',
            hintStyle:  Theme.of(context).textTheme.title,
          ),
          style:  Theme.of(context).textTheme.display1,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('Who should help you?',
              style: Theme.of(context).textTheme.display1),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Choose - from anyone you have already added before',
            hintStyle:  Theme.of(context).textTheme.title,
          ),
          style:  Theme.of(context).textTheme.display1,
        ),
        Row(
          children: <Widget>[
            Checkbox(
              checkColor: Colors.white,
              activeColor: Theme.of(context).accentColor,
              value: monVal,
              onChanged: (bool value) {
                setState(() {
                  monVal = value;
                });
              },
            ),
            Flexible( child:
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('Public - anyone can help not only persons I added as contacts',
                  style: Theme.of(context).textTheme.display2),
            ),
            ),
          ],
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
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
                      },
                      color: Theme.of(context).indicatorColor,
                      child:
                      Text(
                        "Cancel",
                        style:  Theme.of(context).textTheme.caption,
                      )
                  ),
                ),
              ),
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
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text("Assists need recorded!"),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                              //    Navigator.push(context, new MaterialPageRoute(builder: (context) => ProfileSaved()));
                            });
                      },
                      color:  Theme.of(context).accentColor,
                      child:
                      Text(
                        "Save!",
                        style:  Theme.of(context).textTheme.caption,
                      )
                  ),
                ),
              ),
            ]),
      ]),
    );
  }
}