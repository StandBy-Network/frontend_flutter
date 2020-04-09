import 'package:flutter/material.dart';
import 'sign_in.dart';


class PasswordSent extends StatefulWidget {
  PasswordSent({Key key}) : super(key: key);
  @override
  PasswordSentState createState() => new PasswordSentState();
}

class PasswordSentState extends State<PasswordSent> {

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
        title: Text('Elfelejtett jelszó - elküldve'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  height: 300,
                  child: Text('Jelszóemlékeztető elküldve',
                    style: TextStyle(
                      fontSize: 16,
                      color:  Color(0xffD50000),
                    ),
                  ),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              ButtonTheme(
              minWidth: 160.0,
              height: 60.0,
              child: RaisedButton(
                  padding: EdgeInsets.all(20.0),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  color: Color(0xffD50000),
                  child:
                  Text(
                    "Rendben",
                    style: TextStyle(
                      fontSize:16.0,
                      color: Color(0xFFeceff1),
                    ),
                  )
              ),
            ),
              ],
            )]),
      ),
    );
  }
  void buttonPressed(){}
}