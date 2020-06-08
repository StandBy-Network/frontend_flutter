import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/assist_item.dart';
import 'package:frontend_flutter/components/layout_simple.dart';
import 'package:intl/intl.dart';

import '../../models/assist_model.dart';


class AssistsOverviewScreen extends StatelessWidget {
  final List<Assist> loadedAssists = [
    Assist(
        id: 'a1',
        date:  DateFormat('MMMM d y hh:mm').format(DateTime.now().add(Duration(days:2))),
        description: "Pempers, pálinka",
        status: "NEW"
    ),
    Assist(
        id: 'a2',
        date: DateFormat('MMMM d y hh:mm').format(DateTime.now()),
        description: "Strawberry, bread, milk",
        status: "DONE"
    ),
    Assist(
        id: 'a3',
        date:  DateFormat('MMMM d y hh:mm').format(DateTime.now().add(Duration(days:3))),
        description: "I need medicine immediately",
        status: "NEW"
    ),
    Assist(
        id: 'a4',
        date:  DateFormat('MMMM d y hh:mm').format(DateTime.now()),
        description: "Toilette paper",
        status: "ON"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  LayoutSimple(
      layoutTitle: 'Assist requests nearby',
      layoutContent: ListView.builder(
        itemCount: loadedAssists.length,
        itemBuilder: (ctx, i) => AssistItem(
          loadedAssists[i].id,
          loadedAssists[i].date,
          loadedAssists[i].description,
          loadedAssists[i].status,
        ),
      ),
    );
  }

}