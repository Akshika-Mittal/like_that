import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.red,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: themeText(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder =OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(

    floatingLabelBehavior:FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme themeText() {
  return TextTheme(
    bodyText1: TextStyle(
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      color: kTextColor,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    // iconTheme: IconThemeData(
    //   color: Colors.black,),
    textTheme: TextTheme(
      headline6:TextStyle(
        color:Color(0xFF888888),
        fontSize: 18,
      ),
    ),
  );
}