import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Create an Account", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 5),
                Container(
                  height: 100.0,
                  width: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.jpeg'),
                      fit: BoxFit.fitHeight
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 50.0)),
                Spacer(flex: 5),
                TextField(
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Phone Number", style: TextStyle(color: Colors.white,)),
                    prefixIcon: Icon(Icons.phone_iphone_outlined, color: Colors.white,),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 30.0)),
                Spacer(flex: 1),
                TextField(
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("Email", style: TextStyle(color: Colors.white,)),
                    prefixIcon: Icon(Icons.mail_outline, color: Colors.white,),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 30.0)),
                Spacer(flex: 1),

                TextField(
                  obscureText: true,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  decoration: InputDecoration(
                    label: Text("Password", style: TextStyle(color: Colors.white,)),
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.white,),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 50.0)),
                Spacer(flex: 5),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40.0,
                    child: ElevatedButton(onPressed: (){}, child: Text("Sign Up"),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                      ),)),
                // Padding(padding: const EdgeInsets.only(top: 15.0)),
                Spacer(flex: 1),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40.0,
                    child: OutlinedButton(onPressed: (){}, child: Text("Continue as a Guest",),)),
                Spacer(flex: 10),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ", style: TextStyle( fontSize: 14.0, color: Colors.white),),
                        InkWell(onTap: ()=>Get.back(), child: Text("Log in Now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Theme.of(context).primaryColor),))
                      ],
                    )
                )
              ],
            )),
      ),
    );
  }

}