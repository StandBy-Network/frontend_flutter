import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/dropdown.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import '../home.dart';


class OfferAssist extends StatefulWidget {
  OfferAssist({Key key}) : super(key: key);
  @override
  OfferAssistState createState() => new OfferAssistState();
}

class OfferAssistState extends State<OfferAssist> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return LayoutSimple(
      layoutTitle: 'Segítségfelajánlás',
      layoutContent:
      ListView( children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('Segítségkérés leírása' ,
                  style: Theme.of(context).textTheme.display2
              ),
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeColor: Theme.of(context).accentColor,
            ),
          ],
        ),
        DropDown(),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('Terület, ahol felajánlom a segítségem' ,
              style: Theme.of(context).textTheme.display2
          ),
        ),
        DropDown(),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('Megjegyzés' ,
              style: Theme.of(context).textTheme.display2
          ),
        ),
        TextField( decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Bármi, amit tudnunk kell arról, hogyan és hol tudsz segíteni'
        ),
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
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
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