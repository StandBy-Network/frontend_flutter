import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  @override
  SignUpState createState() => new SignUpState();
}

class SignUpState extends State<SignUp> {

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
            /*...*/
          },
        ),
        title: Text('SEGÍTSNEKEM - ASSIST'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child:
        ListView( children: [
          SizedBox(
            height: 60.0,
            child: Image.asset(
              "logo/standby_logo_full.png",
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
            child: Text('Regisztráció, feliratkozás'.toUpperCase(),
              style: TextStyle(
                fontSize: 22,
                color:  Color(0xFF000000),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Név - vezetéknév, keresztnév',
                hintStyle: ( TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300
                )
                ),
              ),
              style: TextStyle(fontSize:12.0,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'E-mailcím',
                hintStyle: ( TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300
                )
                ),
              ),
              style: TextStyle(fontSize:12.0,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Telefonszám',
                hintStyle: ( TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300
                )
                ),
                errorText: "Telefonszám megadása kötelező!",
                errorStyle: TextStyle(
                  color: Color(0xffD50000),
                ),
              ),
              style: TextStyle(fontSize:12.0,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Irányítószám',
                hintStyle: ( TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300
                )
                ),
              ),
              style: TextStyle(fontSize:12.0,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 60, 80, 20),
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
      ),
    );
  }
  void buttonPressed(){}
}