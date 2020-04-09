import 'package:flutter/material.dart';
import 'package:frontend_flutter/bean/layout_bean.dart';
import 'health_state_button_next.dart';
import 'health_state_layout.dart';


class StateFormChronicIllness2 extends StatefulWidget {
  @override
  StateFormChronicIllness2State createState() => StateFormChronicIllness2State();
}

class StateFormChronicIllness2State  extends State<StateFormChronicIllness2> {
  int selectedRadio;

  @override
  initState(){
    super.initState();
    selectedRadio = 0;
  }

  Container c = Container(
    child: Column(
      children:  <Widget>[
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: <Widget>[
            Radio(
              value: 1,
            //  groupValue: this.selectedRadio,
              activeColor: Colors.green,
              onChanged: (  val ){
                print(val);
              },
            ),
            Radio(
              value: 2,
             // groupValue: selectedRadio,
              activeColor: Colors.green,
              onChanged: (  val ){
                print(val);
              },
            ),
          ],
        ),
      ]


    ),
  );

  @override
  Widget build(BuildContext context) {
    LayoutBean layoutBean = new LayoutBean();
    layoutBean.context = context;
    layoutBean.appBarTitle = "Státuszom";
    layoutBean.headerTitle = "ADATOK MEGADÁSA";
    layoutBean.contengHeaderTitle = "VAN VALAMI KRÓNIKUS BETEGSÉGE?";
    layoutBean.body = c;
    layoutBean.nextButton = StateButtonNext.getNextButton(
        context, new StateFormChronicIllness2(), "TOVÁBB");
    return StateLayout.getScrean(layoutBean);
  }
}

class Radiobutton extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}
class RadioButtonWidget extends State {
  String radioItem = '';
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        RadioListTile(
          groupValue: radioItem,
          title: Text('Radio Button Item 1'),
          value: 'Item 1',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Radio Button Item 2'),
          value: 'Item 2',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        Text('$radioItem', style: TextStyle(fontSize: 23),)

      ],
    );
  }
}