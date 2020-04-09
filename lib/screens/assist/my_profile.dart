import 'package:flutter/material.dart';
import 'profile_saved.dart';

import '../home.dart';


class MyProfile extends StatefulWidget {
  MyProfile({Key key}) : super(key: key);
  @override
  MyProfileState createState() => new MyProfileState();
}

class MyProfileState extends State<MyProfile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
          icon: Icon(
            Icons.dehaze,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        title: Text('Profilom',
        style: Theme.of(context).textTheme.headline),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child:
        ListView( children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Név',
            style: Theme.of(context).textTheme.title),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'John Connor',
                hintStyle:  Theme.of(context).textTheme.title,
            ),
            style:  Theme.of(context).textTheme.display1,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('E-mailcím',
            style: Theme.of(context).textTheme.title),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'info@standby.com',
                hintStyle:  Theme.of(context).textTheme.title,
            ),
            style:  Theme.of(context).textTheme.display1,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Mobilszám',
            style: Theme.of(context).textTheme.title),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '+36301234567',
                hintStyle:  Theme.of(context).textTheme.title,
            ),
            style:  Theme.of(context).textTheme.display1,
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
                          /*...*/
                        },
                        color: Theme.of(context).indicatorColor,
                        child:
                        Text(
                          "Mégsem",
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
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => ProfileSaved()));
                        },
                        color:  Theme.of(context).accentColor,
                        child:
                        Text(
                          "Mehet!",
                          style:  Theme.of(context).textTheme.caption,
                        )
                    ),
                  ),
                ),
              ]),
        ]),
      ),
    );
  }
  void buttonPressed(){}
}