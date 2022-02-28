import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/screens/access/register.dart';

import '../homeNavigation/navigation.dart';
import 'forgotPassword.dart';

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
    extendBodyBehindAppBar: true,
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).backgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    body:SingleChildScrollView(
        child:Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: FractionalOffset.topCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.1,
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(flex: 10,),
                      Container(
                        height: 80.0,
                        width: 80.0,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.jpeg'),
                              fit: BoxFit.fitHeight
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(width: 0.5, color: Colors.grey),
                        ),
                      ),
                      // Padding(padding: const EdgeInsets.only(top: 20.0)),
                      Spacer(flex: 1,),
                      Text("Welcome to GLORY", style: TextStyle(color: Colors.white,
                          fontSize: 18.0, fontFamily: 'Poppins', fontWeight: FontWeight.bold),),
                      // Padding(padding: const EdgeInsets.only(top: 10.0)),
                      Spacer(flex: 1,),
                      Text(
                        "Sign in to continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                      // Padding(padding: const EdgeInsets.only(top: 50.0)),
                      Spacer(flex: 6,),
                      TextField(
                        style: TextStyle(color: Theme.of(context).primaryColor),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text("Phone Number", style: TextStyle(color: Colors.white,)),
                          prefixIcon: Icon(Icons.phone_iphone_outlined, color: Colors.white,),
                        ),
                      ),
                      // Padding(padding: const EdgeInsets.only(top: 30.0)),
                      Spacer(flex: 1,),
                      TextField(
                        obscureText: true,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                        decoration: InputDecoration(
                          label: Text("Password", style: TextStyle(color: Colors.white,)),
                          prefixIcon: Icon(Icons.lock_outline, color: Colors.white,),
                        ),
                      ),
                      Spacer(flex: 1,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: ()=>Get.to(()=>forgotPassword()),
                            child: Text("Forgot Password?", style: TextStyle(fontSize: 12.0, color: Colors.grey),),
                          )
                        ],
                      ),
                      // Padding(padding: const EdgeInsets.only(top: 50.0)),
                      Spacer(flex: 6,),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40.0,
                          child: ElevatedButton(onPressed: ()=>Get.off(()=>navigation()), child: Text("Sign In"),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)
                                    )
                                )
                            ),)),
                      // Padding(padding: const EdgeInsets.only(top: 15.0)),
                      Spacer(flex: 1,),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40.0,
                          child: ElevatedButton.icon(onPressed: ()=>Get.off(()=>navigation()),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)
                                    )
                                )
                            ), label: Text("Sign In with Apple"),
                            icon: Image.asset("assets/images/apple.png",
                             width: 20.0, height: 20.0, color: Colors.black,),)),
                      // Padding(padding: const EdgeInsets.only(top: 15.0)),
                      Spacer(flex: 1,),
                      SizedBox(
                    width: MediaQuery.of(context).size.width,
                          height: 40.0,
                    child: OutlinedButton(onPressed: ()=>Get.off(()=>navigation()), child: Text("Continue as a Guest",),)),
                      Spacer(flex: 10,),
                    ],
                  ),
              ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                color: Theme.of(context).backgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ", style: TextStyle( fontSize: 14.0, color: Colors.white,),),
                    InkWell(onTap: ()=>Get.to(()=>register()), child: Text("Register Now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Theme.of(context).primaryColor),))
                  ],
                )
            ),
          )
        ]
      ),
    ),)
    );
  }

}