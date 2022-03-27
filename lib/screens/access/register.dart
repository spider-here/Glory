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
        title: Text("Create an Account", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),),
        iconTheme: IconThemeData(
            color: Theme.of(context).textTheme.bodyText1?.color
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: MediaQuery.of(context).platformBrightness == Brightness.light? Brightness.light:Brightness.dark,
          statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark? Brightness.light:Brightness.dark,
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
                const Spacer(flex: 5),
                Container(
                  height: 100.0,
                  width: 100.0,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/logo.jpeg'),
                      fit: BoxFit.fitHeight
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 50.0)),
                const Spacer(flex: 5),
                TextField(
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Phone Number", style: Theme.of(context).textTheme.bodyText1),
                    prefixIcon: Icon(Icons.phone_iphone_outlined, color: Theme.of(context).textTheme.bodyText1?.color,),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 30.0)),
                const Spacer(flex: 1),
                TextField(
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("Email", style: Theme.of(context).textTheme.bodyText1),
                    prefixIcon: Icon(Icons.mail_outline, color: Theme.of(context).textTheme.bodyText1?.color,),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 30.0)),
                const Spacer(flex: 1),

                TextField(
                  obscureText: true,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  decoration: InputDecoration(
                    label: Text("Password", style: Theme.of(context).textTheme.bodyText1),
                    prefixIcon: Icon(Icons.lock_outline, color: Theme.of(context).textTheme.bodyText1?.color,),
                  ),
                ),
                // Padding(padding: const EdgeInsets.only(top: 50.0)),
                const Spacer(flex: 5),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40.0,
                    child: ElevatedButton(onPressed: (){}, child: const Text("Sign Up"),)),
                // Padding(padding: const EdgeInsets.only(top: 15.0)),
                const Spacer(flex: 1),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40.0,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Continue as a Guest",),)),
                const Spacer(flex: 10),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14.0,),),
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