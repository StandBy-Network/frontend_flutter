import 'package:flutter/material.dart';
import 'home.dart';


class OfferAssist extends StatefulWidget {
  OfferAssist({Key key}) : super(key: key);
  @override
  OfferAssistState createState() => new OfferAssistState();
}

class OfferAssistState extends State<OfferAssist> {

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
        title: Text('Segítség felajánlása',
            style:  Theme.of(context).textTheme.headline),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child:
        ListView( children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
            child: Text('Segítség felajánlása' ,
                style: Theme.of(context).textTheme.headline
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