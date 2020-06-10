import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:intl/intl.dart';


class Assists extends StatefulWidget {
  Assists({Key key}) : super(key: key);
  @override
  AssistsState createState() => new AssistsState();
}

class AssistsState extends State<Assists> {
  final f = new DateFormat('yyyy-MM-dd hh:mm');

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
      layoutTitle: 'Segítségkérések és -nyújtások',
      layoutContent: ListView(
          children: showRequests(),
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
  //  Comparator<Request> dateComparator = (a, b) => a.date.compareTo(b.date);
 //   requests.sort(dateComparator);
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
