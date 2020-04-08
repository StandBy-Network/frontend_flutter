import 'package:flutter/material.dart';
import '../../imetyou/imetyou.dart';
import '../../assist/ui/screens/my_profile.dart';

class ApplicationSwitcher extends StatefulWidget {
  @override
  ApplicationSwitcherState createState() => new ApplicationSwitcherState();
}

class ApplicationSwitcherState extends State<ApplicationSwitcher> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyProfile()));

                      },
                      color: Colors.blue,
                      padding: EdgeInsets.all(10.0),
                      child: Column( // Replace with a Row for horizontal icon + text

                        children: <Widget>[
                          Icon(Icons.android),
                          Text("ASSIST")
                        ],
                      ),
                    ),
                  ],


                ),
              ),
            ),
            Expanded(
              child: Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                      <Widget>[
                        FlatButton(
                          onPressed: ()  {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ImetYouApp()));
                          },
                          color: Colors.blue,
                          padding: EdgeInsets.all(10.0),
                          child: Column( // Replace with a Row for horizontal icon + text

                            children: <Widget>[
                              Icon(Icons.android),
                              Text("I MET YOU")
                            ],
                          ),
                        ),
                    ],

                ),
              ),
            ),

            ],
          ),
        ),




    );

  }

}