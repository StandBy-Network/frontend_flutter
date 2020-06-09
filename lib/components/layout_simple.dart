import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/screens/home.dart';

class LayoutSimple extends StatelessWidget {
  Widget layoutContent;
  String layoutTitle;
  Widget floatingActionButton;

  LayoutSimple({
    @required this.layoutContent,
    @required this.layoutTitle,
    this.floatingActionButton,
  });

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
        title: Text(layoutTitle,
            style: Theme
                .of(context)
                .textTheme
                .headline),
      ),
      body: Container(
          margin: EdgeInsets.all(8),
          child: layoutContent
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}