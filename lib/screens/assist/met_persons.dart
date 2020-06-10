
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/models/contact.dart';

import '../home.dart';
import 'met_one_person.dart';


class MetPersons extends StatefulWidget {
  MetPersons({Key key}) : super(key: key);
  @override
  MetPersonsState createState() => new MetPersonsState();
}

class MetPersonsState extends State<MetPersons> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
      layoutTitle: 'Whom did I meet?',
      layoutContent: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(4, 8, 4, 16),
            child: Text("Add manually whom you met in the past weeks to track their status.",
                style: Theme.of(context).textTheme.display1),
          ),
          TextField(
            controller: editingController,
            decoration: InputDecoration(
              labelText: "Search",
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
          ...showContacts(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonTheme(
            minWidth: 160.0,
            height: 60.0,
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
              },
              color: Theme.of(context).indicatorColor,
              child: Row(children: [
                Icon(Icons.arrow_back, color: Colors.white),
                Text(
                  "Back",
                  style:  Theme.of(context).textTheme.caption,
                )
              ],
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 160.0,
            height: 60.0,
            child: RaisedButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => MetOnePerson()));
              },
              color: Theme.of(context).accentColor,
              child:
              Text(
                "Add!",
                style:  Theme.of(context).textTheme.caption,
              ),
            ),
          ),
        ],
      ),
    );
  }


  List<Contact> buildContacts() {
    List<Contact> contacts = List<Contact>();
    contacts.add(Contact(name: 'Catherine S'));
    contacts.add(Contact(name: 'Joseph Good'));
    contacts.add(Contact(name: 'Peter Bad'));
    contacts.add(Contact(name: 'Jackline Someone'));

    return contacts;
  }

  List<ListTile> showContacts() {
    List<Contact> contacts = buildContacts();
    List<ListTile> list = List<ListTile>();
    contacts.forEach((contact) {
      list.add(ListTile(
        leading: CircleAvatar(
          foregroundColor: Color(0xff747474),
          radius: 8,
        ),
        title: Text(contact.name),
      ));
    });
    return list;
  }

}