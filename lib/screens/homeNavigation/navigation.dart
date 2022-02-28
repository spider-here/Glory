import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:glory/controllers/navigation_get.dart';
import 'package:glory/screens/homeNavigation/story.dart';
import 'package:glory/screens/homeNavigation/streaming.dart';
import 'books.dart';
import 'more.dart';
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
        bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), ),
      child: BottomNavigationBar(
          currentIndex: getController.selectedIndex,
            onTap: (int index){
            getController.updateIndex(index);
            _navController.jumpToPage(index);
            },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade900,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedIconTheme: IconThemeData(
          size: 24.0
        ),
        selectedIconTheme: IconThemeData(
          size: 26.0,
              color: Theme.of(context).primaryColor,
        ),

            items: [
              BottomNavigationBarItem(
                label: "Reels", icon: Icon(Icons.donut_large_outlined),
                  activeIcon: Icon(Icons.donut_large_rounded)
              ),
              BottomNavigationBarItem(
                label: "Streaming", icon: Icon(Icons.ondemand_video_outlined),
                  activeIcon: Icon(Icons.ondemand_video_rounded)
              ),
              BottomNavigationBarItem(
                label: "Music", icon: Icon(Icons.music_note_outlined),
                activeIcon: Icon(Icons.music_note_rounded)
              ),
              BottomNavigationBarItem(
                label: "Books", icon: Icon(Icons.book_outlined),
                  activeIcon: Icon(Icons.book_rounded)
              ),
              BottomNavigationBarItem(
                label: "More", icon: Icon(Icons.more_horiz_rounded),
              ),
            ],
        ),
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
            more(),
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