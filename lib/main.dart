import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glory/screens/access/splash.dart';

void main() {
  runApp(new GetMaterialApp(
    title: "Glory",
    home: splash(),
    theme: ThemeData(
      fontFamily: 'Poppins',
      backgroundColor: Colors.white,
      primarySwatch: appPrimary,
      primaryColor: appPrimary,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
MaterialColor appPrimary = MaterialColor(0xFF228C22, <int, Color>{
  50: Color.fromRGBO(34, 140, 34, 1),
  100: Color.fromRGBO(34, 140, 34, 1),
  200: Color.fromRGBO(34, 140, 34, 1),
  300: Color.fromRGBO(34, 140, 34, 1),
  400: Color.fromRGBO(34, 140, 34, 1),
  500: Color.fromRGBO(34, 140, 34, 1),
  600: Color.fromRGBO(34, 140, 34, 1),
  700: Color.fromRGBO(34, 140, 34, 1),
  800: Color.fromRGBO(34, 140, 34, 1),
  900: Color.fromRGBO(34, 140, 34, 1),
});