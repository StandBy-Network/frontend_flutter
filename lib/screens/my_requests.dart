import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'home.dart';


class MyRequests extends StatefulWidget {
  MyRequests({Key key}) : super(key: key);
  @override
  MyRequestsState createState() => new MyRequestsState();
}

class MyRequestsState extends State<MyRequests> {
  final f = new DateFormat('yyyy-MM-dd hh:mm');

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
        title: Text('Segítségkéréseim'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: showRequests(),
        ),
      ),
    );
  }

  List<Request> buildRequests() {
    List<Request> requests = List<Request>();
    requests.add(Request("Gyógyszer kellene sűrgősen", DateTime.now(), Status.requestNew));
    requests.add(Request('Banán, alma, körte, barack, pelenka, pálinka, sajt, olló', DateTime.now(), Status.requestOn));
    requests.add(Request('Lapsajt, baracklekvár, szájmaszk', DateTime.now(), Status.requestDone));
    requests.add(Request('Gruyere sajt, Lindt csoki, körte', DateTime.now(), Status.requestDone));

    return requests;
  }

  List<ListTile> showRequests() {
    List<Request> requests = buildRequests();
    for (int i=0; i < 3; i++) {
      requests.addAll(buildRequests());
    }
    Comparator<Request> dateComparator = (a, b) => a.date.compareTo(b.date);
    requests.sort(dateComparator);
    List<ListTile> list = List<ListTile>();
    requests.forEach((request) {
      list.add(ListTile(
        title: Row(children: [
          Column(
            children: <Widget>[
              Text(f.format(request.date)),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Text(request.content),
                  ],
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Color(0xff9B9B9B),
            child: Text(request.status.toString()),
          )
        ],) ,
        trailing: Icon(Icons.keyboard_arrow_right),
      ));
    });
    return list;
  }
}

enum Status {
  requestNew,
  requestOn,
  requestDone
}

class Request {
  DateTime date;
  String content;
  Status status;
  Request(this.content, this.date, this.status);
}
