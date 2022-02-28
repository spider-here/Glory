import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:glory/screens/subScreens/checkoutSuccess.dart';

class checkout extends StatelessWidget{

  String _dummyPrice = "54.99";


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).backgroundColor,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child:Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width/1.5,
                  child: Stack(
                    children: [
                      Align(
                          alignment: FractionalOffset.topCenter,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width/1.8,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(20.0)),
                          )),
                      Align(
                        alignment: FractionalOffset.center,
                        child: ListTile(
                          dense: true,
                          title: Text(
                            "Checkout",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0),
                          ),
                          trailing: Text(
                            "\$$_dummyPrice",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Card(
                          margin: const EdgeInsets.all(0.0),
                          color: Colors.white,
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: TabBar(
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.black,
                              indicator: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(15.0)
                              ),
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabs: [
                              Tab(
                                icon: Icon(Icons.credit_card_rounded),
                                text: "Credit Card",
                              ),
                              Tab(
                                icon: Image.asset("assets/images/apple.png",
                                  width: 20.0, height: 20.0, color: Colors.black,),
                                text: "Apple Pay",
                              ),

                            ],

                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 10.0)),
                ListTile(
                  dense: true,
                  title: Text(
                    "Card Number",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  color: Colors.white,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.credit_card_rounded),
                        ),
                      ),
                    ),
                  )
                ),
                Padding(padding: const EdgeInsets.only(top: 10.0)),
                ListTile(
                  dense: true,
                  title: Text(
                    "Card Holder Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  color: Colors.white,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0),
                          ),
                          Card(
                              color: Colors.white,
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                width: MediaQuery.of(context).size.width/2.5,
                                child: Center(
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV/CVC",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0),
                          ),
                          Card(
                              color: Colors.white,
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                width: MediaQuery.of(context).size.width/2.5,
                                child: Center(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: Center(
                    child: Text("We'll send you payment details to your email after the successful payment.",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton.icon(
                        onPressed: () {Get.off(()=>checkoutSuccess(), transition: Transition.rightToLeft, fullscreenDialog: true);},
                        label: Text("Proceed to Pay"),
                icon: Icon(Icons.lock_rounded),)),
              ],
            ),
          ),
        ),
      ),)
    );
  }

}