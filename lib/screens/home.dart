import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/listtile_long.dart';
import 'package:frontend_flutter/components/listtile_short.dart';
import 'package:frontend_flutter/screens/assist/assists.dart';
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
    return new Scaffold(
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
          style:  Theme.of(context).textTheme.headline,),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Segítségkérés és -nyújtás a közelben',
                  style:  Theme.of(context).textTheme.display1,
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTileShort(
                      tileTitle: "Segítséget kérek!",
                      tileIconColor: Theme.of(context).accentColor,
                      tileIcon: Icons.favorite,
                      tileOnTap: () =>  Navigator.push(context, new MaterialPageRoute(builder: (context) => RequestAssist())),
                    ),
                    ListTileShort(
                      tileTitle: "Segíteni szeretnék!",
                      tileIconColor: Color(0xff63E300),
                      tileIcon: Icons.favorite,
                      tileOnTap: () =>  Navigator.push(context, new MaterialPageRoute(builder: (context) => OfferAssist())),
                    ),
                  ]),
              ListTileLong(
                tileTitle: "Segítségkérések és -nyújtások!",
                tileIconColor: Color(0xffF7B82E),
                tileIcon: Icons.favorite,
                tileOnTap: () =>  Navigator.push(context, new MaterialPageRoute(builder: (context) => Assists())),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:
                Text('Egészségügyi státuszkövetés',
                  style: Theme.of(context).textTheme.display1,),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTileShort(
                      tileOnTap: () => true,
                      tileTitle: 'Egészségügyi státuszom',
                      tileIcon: Icons.person,
                    ),
                    ListTileShort(
                      tileIcon: Icons.people,
                      tileTitle: 'Barátaim egészségügyi státusza',
                      tileOnTap: () => true,
                    ),
                  ]),
              ListTileLong(
                tileIcon: Icons.location_on,
                tileTitle: "Kikkel találkoztam",
                tileOnTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => ImetYouApp())),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:
                Text('Kapcsolataim, profilom',
                  style: Theme.of(context).textTheme.display1,),
              ),
              ListTileLong(
                tileOnTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyContacts())),
                tileTitle: 'Kapcsolataim',
                tileIcon: Icons.people_outline,
              ),
              ListTileLong(
                tileIcon: Icons.person,
                tileTitle: 'Profilom',
                tileOnTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyProfile())),
              )
            ]),
      ),
    );
  }
}
