import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/screens/subScreens/cart.dart';
import 'package:glory/screens/subScreens/profile.dart';
import 'package:glory/screens/subScreens/spinWheel.dart';

class cWidgets{

  Widget profilePageStats({required String totalFollowers,
    required String totalFollowing, required String totalLikes,
    required onTapFollowers, required onTapFollowing,
    required onTapLikes, }){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(flex: 2,),
        InkWell(
          onTap: onTapFollowers,
          child: Column(
            children: [Text(
              totalFollowers,
              style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
              Text("Followers", style: TextStyle(color: Colors.white, fontSize: 12.0),)
            ]
          ),
        ),
        Spacer(flex: 1,),
        InkWell(
          onTap: onTapFollowing,
          child: Column(
            children: [Text(
              totalFollowing,
              style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
              Text("Following", style: TextStyle(color: Colors.white, fontSize: 12.0),)
            ]
          ),
        ),
        Spacer(flex: 1,),
        InkWell(
          onTap: onTapLikes,
          child: Column(
            children: [Text(
              totalLikes,
              style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
              Text("Likes", style: TextStyle(color: Colors.white, fontSize: 12.0),)
            ]
          ),
        ),
        Spacer(flex: 2,),
      ],
    );
  }

  Widget cartButton({required BuildContext context}){
    return IconButton(
        onPressed: () {Get.to(()=>cart(), transition: Transition.rightToLeft);},
        splashColor: Theme.of(context).primaryColor,
        splashRadius: 20.0,
        icon: ImageIcon(
          AssetImage('assets/images/cart_bag.png'),
          color: Colors.white,
        ));
  }

Widget wheelButton({required BuildContext context}){
    return IconButton(
        onPressed: () {Get.to(()=>spinWheel(), transition: Transition.rightToLeft);},
        splashColor: Theme.of(context).primaryColor,
        splashRadius: 20.0,
        icon: ImageIcon(
          AssetImage('assets/images/spin_wheel.png'),
          color: Colors.white,
        ));
  }

Widget profileButton({required BuildContext context, required String profileImageURL}){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
          onTap: () {Get.to(()=>profile(), transition: Transition.leftToRight);},
          splashColor: Theme.of(context).primaryColor,
          radius: 15.0,
          child: CircleAvatar(
            foregroundImage: NetworkImage(profileImageURL),
            ),
          ),
    );
  }


}