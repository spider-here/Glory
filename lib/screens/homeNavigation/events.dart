import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/screens/subActivities/profile.dart';
import 'package:glory/screens/subActivities/search.dart';

class events extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
        title: InkWell(
            onTap: () {
              Get.to(() => search(), fullscreenDialog: true);
            },
            child: Container(
                width: double.maxFinite,
                child: AutoSizeText(
                  "Events",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 1,
                ))),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/profile.png',
            color: Colors.white,
          ),
          splashColor: Theme.of(context).primaryColor,
          splashRadius: 20.0,
          onPressed: () {
            Get.to(() => profile());
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(
              height: 0.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              splashColor: Theme.of(context).primaryColor,
              splashRadius: 20.0,
              icon: ImageIcon(
                AssetImage('assets/images/spin_wheel.png'),
                color: Colors.white,
              )
          ),
          IconButton(
              onPressed: () {},
              splashColor: Theme.of(context).primaryColor,
              splashRadius: 20.0,
              icon: ImageIcon(
                AssetImage('assets/images/cart_bag.png'),
                color: Colors.white,
              )
          ),
        ],
      ),
      body: Container(),
    );
  }

}