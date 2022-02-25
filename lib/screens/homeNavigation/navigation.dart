import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:glory/controllers/navigation_get.dart';
import 'package:glory/screens/homeNavigation/story.dart';
import 'package:glory/screens/homeNavigation/streaming.dart';

import '../subActivities/storyMusicProfile.dart';
import 'books.dart';
import 'events.dart';
import 'music.dart';

class navigation extends StatelessWidget {
  PageController _navController = new PageController(initialPage: 0);
  navigation_get getController = Get.put(navigation_get());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<navigation_get>(builder: (controller) {
      return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBody: true,
        bottomNavigationBar:FFNavigationBar(
            items: [
              FFNavigationBarItem(
                iconData: Icons.add_circle_outline_outlined,
                label: "Reels",
              ),
              FFNavigationBarItem(
                iconData: Icons.ondemand_video_outlined,
                label: "Streaming",
              ),
              FFNavigationBarItem(
                iconData: Icons.music_note_outlined,
                label: "Music",
              ),
              FFNavigationBarItem(
                iconData: Icons.book_outlined,
                label: "Books",
              ),
              FFNavigationBarItem(
                iconData: Icons.event_outlined,
                label: "Events",
              ),
            ],
            onSelectTab: (index) {
              controller.updateIndex(index);
              _navController.jumpToPage(index);
            },
            theme: FFNavigationBarTheme(
              barBackgroundColor: Colors.grey.shade900,
              selectedItemBackgroundColor: Theme.of(context).primaryColor,
              selectedItemLabelColor: Theme.of(context).primaryColor,
              showSelectedItemShadow: false,
              selectedItemBorderColor: Theme.of(context).primaryColor,
              selectedItemIconColor: Theme.of(context).backgroundColor,
              unselectedItemTextStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 0.0,
              ),
              selectedItemTextStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 0.0,
              ),
              // barHeight: 50.0,
            ),
            selectedIndex: controller.selectedIndex,
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _navController,
          onPageChanged: (index) {},
          children: [
            story(),
            streaming(),
            music(),
            books(),
            events(),
          ],
        ),
      );
    });
  }
}

// appBar: AppBar(
// systemOverlayStyle: SystemUiOverlayStyle(
// statusBarColor: Theme.of(context).backgroundColor,
// statusBarBrightness: Brightness.dark,
// statusBarIconBrightness: Brightness.light,),
// title: controller.selectedIndex!=4? Text(
// controller.activityTitle,
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 14.0),
// ):InkWell(
// onTap: () {},
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Text(
// "Username",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 14.0),
// ),
// Icon(
// Icons.arrow_drop_down,
// color: Colors.white,
// )
// ])),
// centerTitle: true,
// iconTheme: IconThemeData(
// color: Colors.white
// ),
// backgroundColor: Colors.transparent,
// elevation: 0.0,
// leading: IconButton(icon: Image.asset('assets/images/profile.png', color: Colors.white,),
// splashColor: Theme.of(context).primaryColor,
// splashRadius: 20.0,
// onPressed: (){
// Get.to(()=>profile());
// },),
// bottom: PreferredSize(preferredSize: Size.fromHeight(2.0),
// child: Padding(
// padding: const EdgeInsets.only(left: 20.0, right: 20.0),
// child: Divider(
// thickness: 0.5,
// color: Colors.grey,
// ),
// ),
// ),
// actions: [
// IconButton(
// onPressed: () {},
// splashColor: Theme.of(context).primaryColor,
// splashRadius: 20.0,
// icon: ImageIcon(
// AssetImage('assets/images/spin_wheel.png'),
// color: Colors.white,
// )),
// IconButton(
// onPressed: () {},
// splashColor: Theme.of(context).primaryColor,
// splashRadius: 20.0,
// icon: ImageIcon(
// AssetImage('assets/images/cart_bag.png'),
// color: Colors.white,
// )),
// ],
// ),