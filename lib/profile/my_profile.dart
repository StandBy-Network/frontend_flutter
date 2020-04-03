import 'package:flutter/material.dart';

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
        title: Text('Profilom'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child:
        ListView( children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Vezetéknév'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Connor',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Keresztnév'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'John',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Divider(
              height: 50,
              thickness: 2,
              color: Color(0xff9B9B9B)
          ),
          Text('Kapcsolat',
            style: TextStyle(
              fontSize: 16,
              color:  Color(0xffD50000),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('E-mailcím'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'info@standby.com',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Telefonszám'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '+36301234567',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Mobilszám'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '+36301234567',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Divider(
              height: 50,
              thickness: 2,
              color: Color(0xff9B9B9B)
          ),
          Text('Jelszó',
            style: TextStyle(
              fontSize: 16,
              color:  Color(0xffD50000),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Jelenlegi jelszó'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '*******************',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Új jelszó'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '*****************',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Új jelszó ismét'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '*****************',
                hintStyle: TextStyle(
                  fontSize:16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                )
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Divider(
              height: 50,
              thickness: 2,
              color: Color(0xff9B9B9B)
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Figyelmeztetések',
              style: TextStyle(
                fontSize: 16,
                color:  Color(0xff63E300),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff9B9B9B),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 28, 10, 20),
                      child: Text('Üzenetek',
                        style: TextStyle(
                          fontSize: 16,
                          color:  Colors.black,
                        ),
                      )
                  ),
                ],
              ),
              Checkbox(
                value: isChecked,
                activeColor: Color(0xff63E300),
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
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
                          /*...*/
                        },
                        color: Color(0xff909090),
                        child:
                        Text(
                          "Mégsem",
                          style: TextStyle(
                            fontSize:16.0,
                            color: Color(0xFFeceff1),
                          ),
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
                          /*...*/
                        },
                        color: Color(0xffD50000),
                        child:
                        Text(
                          "Mehet!",
                          style: TextStyle(
                            fontSize:16.0,
                            color: Color(0xFFeceff1),
                          ),
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