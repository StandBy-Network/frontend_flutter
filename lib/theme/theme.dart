import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      //appbar and header
      headline: base.headline.copyWith(
        color: Colors.black,
        fontSize: 22,
      ),
      // placeholder, hint text
      title: base.title.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w300,
          color:  Color(0xff9B9B9B)
      ),
      // input text
      display1: base.headline.copyWith(
        fontSize:18.0,
        color: Colors.black,
        fontWeight: FontWeight.w300,
      ),
      // form error text
      display2: base.headline.copyWith(
        fontSize: 14.0,
        color: Color(0xffD50000),
      ),
      // button text
      caption: base.caption.copyWith(
        fontSize:16.0,
        color: Color(0xFFeceff1),
      ),
      // main page text
      body1: base.body1.copyWith(
        color: Color(0xffEB6E61),
        fontSize: 18,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Color(0xffF5F5F5),
    accentColor: Color(0xffD50000),
    indicatorColor: Color(0xff979797),
    dialogBackgroundColor: Color(0xff323232),
    dialogTheme: DialogTheme(
      contentTextStyle: TextStyle(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xff979797),
      size: 24.0,
    ),
  );
}