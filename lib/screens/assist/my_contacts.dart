import 'package:flutter/material.dart';

import '../home.dart';


class MyContacts extends StatefulWidget {
  MyContacts({Key key}) : super(key: key);
  @override
  MyContactsState createState() => new MyContactsState();
}

class MyContactsState extends State<MyContacts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
          icon: Icon(
            Icons.dehaze,
            color: Theme.of(context).indicatorColor,
          ),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        title: Text('Kapcsolataim'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: showContacts(),
        ),
      ),
    );
  }
  void buttonPressed(){}

  List<Contact> buildContacts() {
    List<Contact> contacts = List<Contact>();
    contacts.add(Contact('Pesti Mama'));
    contacts.add(Contact('Balatoni Papa'));
    contacts.add(Contact('Kovács János'));
    contacts.add(Contact('Király Lulu'));

    return contacts;
  }

  List<ListTile> showContacts() {
    List<Contact> contacts = buildContacts();
    for (int i=0; i < 5; i++) {
      contacts.addAll(buildContacts());
    }
    Comparator<Contact> nameComparator = (a, b) => a.name.compareTo(b.name);
    contacts.sort(nameComparator);
    List<ListTile> list = List<ListTile>();
    contacts.forEach((contact) {
      list.add(ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).indicatorColor,
          child: Text(contact.name.substring(0,1)),
        ),
        title: Text(contact.name),
      ));
    });
    return list;
  }
}

class Contact {
  String name;
  Contact(this.name);
}
