import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);
  @override
  SignInState createState() => new SignInState();
}

class SignInState extends State<SignIn> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

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
            child: Text('Bejelentkezés'.toUpperCase(),
              style: TextStyle(
                  fontSize: 22,
                  color:  Color(0xFF000000),
              ),
            ),
          ),

          Text('Bejelentkezés',
            style: TextStyle(
              fontSize: 16,
              color:  Color(0xffD50000),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Felhasználónév'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '********'
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
                hintText: '********'
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(80, 40, 80, 20),
            child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                onPressed: () {
                  /*...*/
                  Navigator.pushNamed(context, '/sign_in_success');
                },
                color: Color(0xffD50000),
                child:
                Text(
                  "Bejelentkezés",
                  style: TextStyle(fontSize:16.0,
                      color: Color(0xFFeceff1),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                )
            ),
          ),
          FlatButton(
            onPressed: () {
              /*...*/

            },
            child: Text(
              "Elfelejtett jelszó",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffD50000),
                fontSize: 16.0,
              ),
            ),
          )
        ]),

      ),
    );
  }
  void buttonPressed(){}
}