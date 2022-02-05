import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glory/screens/homeNavigation/explore.dart';
import 'package:glory/screens/homeNavigation/notifications.dart';
import 'package:glory/screens/homeNavigation/create.dart';
import 'package:glory/screens/homeNavigation/home.dart';
import 'package:glory/screens/homeNavigation/profile.dart';

class navigation extends StatelessWidget{

  PageController _navController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.black,
        height: 50.0,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        animationDuration: Duration(milliseconds: 100),
        items: [
          Padding(padding: EdgeInsets.all(4.0),child: Icon(Icons.home, size: 25.0, color: Colors.white,)),
          Padding(padding: EdgeInsets.all(4.0),child: Icon(Icons.explore, size: 25.0, color: Colors.white,)),
          Padding(padding: EdgeInsets.all(4.0),child: Icon(Icons.add, size: 25.0, color: Colors.white,)),
          Padding(padding: EdgeInsets.all(4.0),child: Icon(Icons.message, size: 25.0, color: Colors.white,)),
          Padding(padding: EdgeInsets.all(4.0),child: Icon(Icons.person, size: 25.0, color: Colors.white,)),
        ],
        onTap: (index) {
          //Handle button tap
          _navController.jumpToPage(index);
        },
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _navController,
        onPageChanged: (index){},
        children: [
          home(),
          explore(),
          create(),
          notifications(),
          profile(),
        ],
      ),
    );
  }
  
}