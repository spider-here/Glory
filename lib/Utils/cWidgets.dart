import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cWidgets{

  Widget profilePageStats({required String totalFollowers, required String totalFollowing, required String totalLikes, required onTapFollowers, required onTapFollowing, required onTapLikes, }){
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
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
              Text("Followers", style: TextStyle(color: Colors.grey, fontSize: 12.0),)
            ]
          ),
        ),
        Spacer(flex: 1,),
        InkWell(
          onTap: onTapFollowing,
          child: Column(
            children: [Text(
              totalFollowing,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
              Text("Following", style: TextStyle(color: Colors.grey, fontSize: 12.0),)
            ]
          ),
        ),
        Spacer(flex: 1,),
        InkWell(
          onTap: onTapLikes,
          child: Column(
            children: [Text(
              totalLikes,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
              Text("Likes", style: TextStyle(color: Colors.grey, fontSize: 12.0),)
            ]
          ),
        ),
        Spacer(flex: 2,),
      ],
    );
  }

}