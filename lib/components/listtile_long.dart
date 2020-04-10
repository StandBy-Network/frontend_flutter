import 'package:flutter/material.dart';

class ListTileLong extends StatelessWidget {
  final String tileTitle;
  final IconData tileIcon;
  final Color tileIconColor;
  final Function tileOnTap;

  ListTileLong({
    @required this.tileTitle,
    @required this.tileIcon,
    this.tileIconColor,
    @required this.tileOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: Container(
        width: 178.0,
        height: 90.0,
        child: GestureDetector(
          onTap: tileOnTap,
          child: Card(
            child: Padding(
              padding:  EdgeInsets.fromLTRB(0, 4, 0, 4),
              child:  Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        tileIcon,
                        color:  tileIconColor,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Text(tileTitle,
                          style: Theme.of(context).textTheme.body1,),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}