import 'package:flutter/material.dart';
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
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 160.0,
                      height: 80.0,
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(
                          Icons.favorite,
                          color:  Color(0xffD50000),
                        ),
                        title: Text('Segítséget kérek',
                          style: Theme.of(context).textTheme.body1,),
                        onTap:  () => Navigator.push(context, new MaterialPageRoute(builder: (context) => RequestAssist())),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 160.0,
                      height: 80.0,
                      color: Colors.white,
                      child:  ListTile(
                        leading: Icon(
                          Icons.favorite,
                          color:  Color(0xff63E300),
                        ),
                        title: Text('Segíteni szeretnék',
                          style: Theme.of(context).textTheme.body1,),
                        onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => OfferAssist())),
                      ),
                    ),
                  ),
                ],
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.favorite, color: Color(0xffF7B82E)),
                  title: Text('Segítségkérések és -nyújtások',
                    style: Theme.of(context).textTheme.body1,),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => Assists())),
                ),),
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
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 160.0,
                        height: 80.0,
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Egészségügyi státuszom',
                            style: Theme.of(context).textTheme.body1,),
                          onTap: () => true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 160.0,
                        height: 80.0,
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(Icons.people),
                          title: Text('Barátaim egészségügyi státusza',
                            style: Theme.of(context).textTheme.body1,),
                          onTap: () => true,
                        ),
                      ),
                    ),
                  ]),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Kikkel találkoztam',
                    style: Theme.of(context).textTheme.body1,),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => ImetYouApp())),
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:
                Text('Kapcsolataim, profilom',
                  style: Theme.of(context).textTheme.display1,),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.people_outline),
                  title: Text('Kapcsolataim',
                    style: Theme.of(context).textTheme.body1,),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyContacts())),
                ),
              ),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profilom',
                    style: Theme.of(context).textTheme.body1,),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyProfile())),
                ),
              ),
              ),
            ]),
      ),
    );
  }
}
