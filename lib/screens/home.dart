import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/components/listtile_long.dart';
import 'package:frontend_flutter/components/listtile_short.dart';
import 'package:frontend_flutter/screens/assist/assists.dart';
import 'package:frontend_flutter/screens/assist/assists_overview_screen.dart';
import 'package:frontend_flutter/screens/assist/offer_assist.dart';
import 'package:frontend_flutter/screens/assist/request_assist.dart';
import 'imetyou/imetyou.dart';
import 'assist/my_contacts.dart';
import 'assist/my_profile.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
        layoutTitle: 'ASSIST',
        layoutContent: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Assist - ask for help or help others',
                  style:  Theme.of(context).textTheme.display1,
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTileShort(
                      tileTitle: "I need help nearby!",
                      tileIconColor: Theme.of(context).accentColor,
                      tileIcon: Icons.favorite,
                      tileOnTap: () =>  Navigator.push(context, new MaterialPageRoute(builder: (context) => RequestAssist())),
                    ),
                    ListTileShort(
                      tileTitle: "I offer help nearby!",
                      tileIconColor: Color(0xff63E300),
                      tileIcon: Icons.favorite,
                      tileOnTap: () =>  Navigator.push(context, new MaterialPageRoute(builder: (context) => OfferAssist())),
                    ),
                  ]),
              ListTileLong(
                tileTitle: "All my assist requests",
                tileIconColor: Color(0xffF7B82E),
                tileIcon: Icons.favorite,
                tileOnTap: () =>  Navigator.push(context, new MaterialPageRoute(builder: (context) => AssistsOverviewScreen())),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:
                Text('Track health status',
                  style: Theme.of(context).textTheme.display1,),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTileShort(
                      tileOnTap: () => true,
                      tileTitle: 'My health status',
                      tileIcon: Icons.person,
                    ),
                    ListTileShort(
                      tileIcon: Icons.people,
                      tileTitle: 'My contacts\' health status',
                      tileOnTap: () => true,
                    ),
                  ]),
              ListTileLong(
                tileIcon: Icons.location_on,
                tileTitle: "With whom did I meet?",
                tileOnTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => ImetYouApp())),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:
                Text('My contacts, profile',
                  style: Theme.of(context).textTheme.display1,),
              ),
              ListTileLong(
                tileOnTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyContacts())),
                tileTitle: 'My contacts',
                tileIcon: Icons.people_outline,
              ),
              ListTileLong(
                tileIcon: Icons.person,
                tileTitle: 'My profile',
                tileOnTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyProfile())),
              )
            ]),
    );
  }
}
