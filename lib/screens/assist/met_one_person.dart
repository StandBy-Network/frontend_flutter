
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/models/contact.dart';
import 'package:frontend_flutter/screens/assist/met_persons.dart';

import '../home.dart';


class MetOnePerson extends StatefulWidget {
  MetOnePerson({Key key}) : super(key: key);
  @override
  MetPersonsState createState() => new MetPersonsState();
}

class MetPersonsState extends State<MetOnePerson> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
      layoutTitle: 'Whom did I meet?',
      layoutContent: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(4, 8, 4, 16),
            child: Text("With whom I met:",
                style: Theme.of(context).textTheme.display1),
          ),
          Row(children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(4, 8, 4, 16),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xffc4c4c4),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 8, 8, 8),
              child: Text("Catherine Small", style: Theme.of(context).textTheme.display1),
            ),
          ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
            child: Text("When", style: Theme.of(context).textTheme.title),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "April 11 2020"
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
            child: Text("Where", style: Theme.of(context).textTheme.title),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Chicago City Center"
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonTheme(
            minWidth: 160.0,
            height: 60.0,
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => MetPersons()));
              },
              color: Theme.of(context).indicatorColor,
              child: Row(children: [
                Icon(Icons.arrow_back, color: Colors.white),
                Text(
                  "Back",
                  style:  Theme.of(context).textTheme.caption,
                )
              ],
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 160.0,
            height: 60.0,
            child: RaisedButton(
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
                },
                color: Theme.of(context).accentColor,
                child:
                Text(
                  "Add!",
                  style:  Theme.of(context).textTheme.caption,
                )
            ),
          ),
        ],),
    );
  }

}