import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glory/screens/access/welcome.dart';

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,),
      ),
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.center,
            child: AnimatedSplashScreen(
              splash:
              Card(
                color: Colors.transparent,
                elevation: 20.0,
                shadowColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Container( width: 180.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2.0
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.jpeg',),
                          fit: BoxFit.fitHeight
                      )
                  ),),
              ),
              nextScreen: welcome(),
              splashTransition: SplashTransition.fadeTransition,
              splashIconSize: 180.0,
              centered: true,
              animationDuration: Duration(milliseconds: 800),
              duration: 1500,
              backgroundColor: Theme.of(context).backgroundColor,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
                child: Text("GLORY", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30.0, fontFamily: 'Poppins', fontWeight: FontWeight.bold))),
          )
        ],
      )
    );
  }

}