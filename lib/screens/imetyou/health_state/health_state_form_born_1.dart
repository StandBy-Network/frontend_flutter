import 'package:flutter/material.dart';
import 'package:frontend_flutter/bean/layout_bean.dart';
import 'package:frontend_flutter/screens/imetyou/calendar.dart';
import 'health_state_button_next.dart';
import 'health_state_form_chronic_illness2.dart';
import 'health_state_layout.dart';

class StateFormBorn1 extends StatefulWidget {
  @override
  StateFormBorn1State createState() => StateFormBorn1State();
}

class StateFormBorn1State  extends State<StateFormBorn1> {
  @override
  Widget build(BuildContext context) {
    LayoutBean layoutBean = new LayoutBean();
    layoutBean.context = context;
    layoutBean.appBarTitle = "Státuszom";
    layoutBean.headerTitle = "ADATOK MEGADÁSA";
    layoutBean.contengHeaderTitle = "MIKOR SZÜLETETT?";
    layoutBean.body = Calendar.getCalendar(layoutBean.context);
    layoutBean.nextButton = StateButtonNext.getNextButton(
        context, new StateFormChronicIllness2(), "TOVÁBB");
    return StateLayout.getScrean(layoutBean);
  }
}



