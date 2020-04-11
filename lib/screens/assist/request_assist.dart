import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/dropdown.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/components/toggle_select.dart';
import '../home.dart';


class RequestAssist extends StatefulWidget {
  RequestAssist({Key key}) : super(key: key);
  @override
  RequestAssistState createState() => new RequestAssistState();
}

class RequestAssistState extends State<RequestAssist> {

  bool monVal = false;

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
        layoutTitle: 'Segítségkérés',
        layoutContent:
        ListView( children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('Segítségkérés leírása' ,
                style: Theme.of(context).textTheme.display2
            ),
          ),
          DropDown(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text('Mennyi időn belül kell a segítség?' ,
                style: Theme.of(context).textTheme.display2
            ),
          ),
          ToggleSelect(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('Megjegyzés',
                style: Theme.of(context).textTheme.display2),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Szöveges megjegyzés',
              hintStyle:  Theme.of(context).textTheme.title,
            ),
            style:  Theme.of(context).textTheme.display1,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('Ki segítsen? Korábbi segítők',
                style: Theme.of(context).textTheme.display2),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Választás már segítőként felvett személyek közül',
              hintStyle:  Theme.of(context).textTheme.title,
            ),
            style:  Theme.of(context).textTheme.display1,
          ),
          Row(
            children: <Widget>[
              Checkbox(
                checkColor: Colors.white,
                activeColor: Theme.of(context).accentColor,
                value: monVal,
                onChanged: (bool value) {
                  setState(() {
                    monVal = value;
                  });
                },
              ),
              Flexible( child:
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text('Nyilvános - mindenki segíthet, nem csak az ismerősök',
                    style: Theme.of(context).textTheme.display2),
              ),
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
                        color: Theme.of(context).indicatorColor,
                        child:
                        Text(
                          "Mégsem",
                          style:  Theme.of(context).textTheme.caption,
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
                      //    Navigator.push(context, new MaterialPageRoute(builder: (context) => ProfileSaved()));
                        },
                        color:  Theme.of(context).accentColor,
                        child:
                        Text(
                          "Mehet!",
                          style:  Theme.of(context).textTheme.caption,
                        )
                    ),
                  ),
                ),
              ]),
        ]),
    );
  }
}