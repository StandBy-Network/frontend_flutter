import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import '../home.dart';


class RequestAssist extends StatefulWidget {
  RequestAssist({Key key}) : super(key: key);
  @override
  RequestAssistState createState() => new RequestAssistState();
}

class RequestAssistState extends State<RequestAssist> {

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
        layoutTitle: 'Segítségkérés',
        layoutContent:
        ListView( children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
            child: Text('Segítségkérés leírása' ,
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
    );
  }
}