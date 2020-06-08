import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/assist_item.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:frontend_flutter/components/my_assist_item.dart';
import 'package:intl/intl.dart';

import '../../models/assist_model.dart';


class MyAssistsScreen extends StatelessWidget {
  final List<Assist> loadedAssists = [
    Assist(
        id: 'a1',
        date:  DateFormat('MMMM d y hh:mm').format(DateTime.now().add(Duration(days:2))),
        description: "Pelenka, pálinka",
        status: "Új",
        isIAskFor: true
    ),
    Assist(
        id: 'a2',
        date: DateFormat('MMMM d y hh:mm').format(DateTime.now()),
        description: "Körte, alma, barack",
        status: "Folyamatban",
        isIAskFor: false
    ),
    Assist(
        id: 'a3',
        date:  DateFormat('MMMM d y hh:mm').format(DateTime.now().add(Duration(days:3))),
        description: "WC-papír, fogkrém",
        status: "Új",
        isIAskFor: true
    ),
    Assist(
        id: 'a4',
        date:  DateFormat('MMMM d y hh:mm').format(DateTime.now()),
        description: "Gyógyszer",
        status: "Kész",
        isIAskFor: false
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
      layoutTitle: 'Segítségkéréseim és -nyújtásaim',
      layoutContent: ListView.builder(
        itemCount: loadedAssists.length,
        itemBuilder: (ctx, i) => MyAssistItem(
            loadedAssists[i].id,
            loadedAssists[i].date,
            loadedAssists[i].description,
            loadedAssists[i].status,
            loadedAssists[i].isIAskFor
        ),
      ),
    );
  }

}