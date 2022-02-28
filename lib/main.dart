import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glory/screens/access/splash.dart';

void main() {
  runApp(new GetMaterialApp(
    title: "Glory",
    home: splash(),
    theme: ThemeData(
      fontFamily: 'Poppins',
      backgroundColor: Colors.black,
      primarySwatch: appPrimary,
      primaryColor: appPrimary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(6.0),
            shadowColor: MaterialStateProperty.all(appPrimary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(appPrimary),
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold
                )
            )
        )
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(
                  width: 1.0,
                  color: appPrimary
                )
            ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontFamily: 'Poppins',
              color: appPrimary,
              fontWeight: FontWeight.bold
            )
          )
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey
          ),),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),),
        isDense: true,
          contentPadding: const EdgeInsets.all(0.0),

      )
    ),
    debugShowCheckedModeBanner: false,
  ));
}
MaterialColor appPrimary = MaterialColor(0xFF81DDAA, <int, Color>{
  50: Color.fromRGBO(129, 221, 170, 1),
  100: Color.fromRGBO(129, 221, 170, 1),
  200: Color.fromRGBO(129, 221, 170, 1),
  300: Color.fromRGBO(129, 221, 170, 1),
  400: Color.fromRGBO(129, 221, 170, 1),
  500: Color.fromRGBO(129, 221, 170, 1),
  600: Color.fromRGBO(129, 221, 170, 1),
  700: Color.fromRGBO(129, 221, 170, 1),
  800: Color.fromRGBO(129, 221, 170, 1),
  900: Color.fromRGBO(129, 221, 170, 1),
});