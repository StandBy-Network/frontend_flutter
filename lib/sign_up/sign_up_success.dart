import 'package:flutter/material.dart';


class SignUpSuccess extends StatefulWidget {
  SignUpSuccess({Key key}) : super(key: key);
  @override
  SignUpSuccessState createState() => new SignUpSuccessState();
}

class SignUpSuccessState extends State<SignUpSuccess> {

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.0,
              child: Image.asset(
                "logo/standby_logo_full.png",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: Text(
                "REGISZTRÁCIÓ, FELIRATKOZÁS",
                style:  TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                child: Text('Sikeres regisztráció :)',
                  style: TextStyle(
                    fontSize: 16,
                    color:  Color(0xffD50000),
                  ),
                ),
                alignment: Alignment(0.0, 0.0),
              ),
            ),
            Center(
              child: Container(
                height: 180,
                child: Text('Pár másodpercen belül használhatod... :)',
                  style: TextStyle(
                    fontSize: 16,
                    color:  Color(0xff63E300),
                  ),
                ),
                alignment: Alignment(0.0, 0.0),
              ),
            )
          ],
        ),
      ),
    );
  }
  void buttonPressed(){}
}