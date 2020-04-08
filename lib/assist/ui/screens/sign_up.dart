import 'package:flutter/material.dart';
import '../../home.dart';


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
        title: Text('SEGÍTSNEKEM - ASSIST',
            style:  Theme.of(context).textTheme.headline),
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
                style: Theme.of(context).textTheme.headline
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Név - vezetéknév, keresztnév',
                hintStyle: Theme.of(context).textTheme.title,
              ),
              style: Theme.of(context).textTheme.display1,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'E-mailcím',
                hintStyle:  Theme.of(context).textTheme.title,
              ),
              style: Theme.of(context).textTheme.display1,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Telefonszám',
                hintStyle:  Theme.of(context).textTheme.title,
                errorText: ("Telefonszám megadása kötelező!"),
                errorStyle: Theme.of(context).textTheme.display2,
                suffixIcon: Icon(Icons.warning, color: Theme.of(context).accentColor),
              ),
              style: Theme.of(context).textTheme.display1,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Irányítószám',
                  hintStyle: Theme.of(context).textTheme.title
              ),
              style: Theme.of(context).textTheme.display1,
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
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
                  },
                  color: Theme.of(context).accentColor,
                  child:
                  Text(
                    "Mehet!",
                    style: Theme.of(context).textTheme.caption,
                  )
              ),
            ),
          ),
        ]),
      ),
    );
  }
}