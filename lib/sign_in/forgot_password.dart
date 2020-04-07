import 'package:flutter/material.dart';
import 'package:frontend_flutter/sign_in/password_sent.dart';


class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);
  @override
  ForgotPasswordState createState() => new ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {

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
            child: Text('Elfelejtett jelszó'.toUpperCase(),
              style: TextStyle(
                fontSize: 22,
                color:  Color(0xFF000000),
              ),
            ),
          ),

          Text('Regisztrációs e-mailcím',
            style: TextStyle(
              fontSize: 16,
              color:  Color(0xffD50000),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Kérjük azt az e-mailt, amivel eredetileg regisztráltál'),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: '********************'
            ),
            style: TextStyle(fontSize:12.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 200, 10, 10),
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
                  padding: EdgeInsets.fromLTRB(10, 200, 10, 10),
                  child: ButtonTheme(
                    minWidth: 160.0,
                    height: 60.0,
                    child: RaisedButton(
                        padding: EdgeInsets.all(20.0),
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => PasswordSent()));
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