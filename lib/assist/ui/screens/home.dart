import 'package:flutter/material.dart';
import './assist/contacts/my_contacts.dart';
import './assist/ui/screens/my_profile.dart';
import './assist/sign_in/sign_in.dart';

import './assist/my_requests/my_requests.dart';


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
        title: Text('SEGÍTSNEKEM - ASSIST'),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: ListView(
            children: [
              Text('Segítségkérés és -nyújtás a közelben'),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color:  Color(0xffD50000),
                  ),
                  title: Text('Segítségkérés',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => true,
                ),),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text('Eddigi segítségkéréseim',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyRequests())),
                ),),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color:  Color(0xff63E300),
                  ),
                  title: Text('Segíteni szeretnék',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => true,
                ),),
              ),
              Text('Egészségügyi státuszkövetés'),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Egészségügyi státuszom',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyProfile())),
                ),
              ),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Barátaim egészségügyi státusza',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyContacts())),
                ),
              ),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.people_outline),
                  title: Text('Kapcsolataim',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyContacts())),
                ),
              ),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Kikkel találkoztam',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyContacts())),
                ),
              ),
              ),
              Text('Események, profil'),
              Card( child:
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Üzenetek és események',
                        style: TextStyle(
                            color: Color(0xffEB6E61)
                        ),
                      ),
                        CircleAvatar(
                          backgroundColor: Color(0xffEB6E61),
                          child: Text('12', style: TextStyle(color: Colors.white),),
                        )
                      ]),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:  () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyRequests())),
                ),
              ),
              ),
              Card( child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profilom',
                    style: TextStyle(
                        color: Color(0xffEB6E61)
                    ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => MyProfile())),
                ),
              ),
              ),
            ]),
      ),
    );
  }
}
