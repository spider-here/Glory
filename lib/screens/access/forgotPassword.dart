import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class forgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Forgot Password?", style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
            Padding(padding: const EdgeInsets.only(top: 10.0)),
            Text(
              "Enter your phone number below to recieve your password reset instruction.",
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            TextField(
              style: TextStyle(color: Theme.of(context).primaryColor),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Phone Number", style: TextStyle(color: Colors.white,)),
                prefixIcon: Icon(Icons.phone_iphone_outlined, color: Colors.white,),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                child: ElevatedButton(onPressed: (){}, child: Text("Reset Password", style: TextStyle(fontWeight: FontWeight.bold),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          )
                      )
                  ),)),
          ],
        ),
      ),
    );
  }

}