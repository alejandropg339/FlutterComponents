import 'package:flutter/material.dart';

class AppTheme {
  static final Color? primary = Colors.deepOrange[400];
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.deepOrange[400],
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primary, elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)),
      inputDecorationTheme:  InputDecorationTheme(
         floatingLabelStyle: TextStyle(color: primary),
         enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
          borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
         ),
         focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
          borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
         ),

          border : const OutlineInputBorder(
          borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
         ),
      ));
}
