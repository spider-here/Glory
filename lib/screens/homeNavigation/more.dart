import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/homeNavigation/more_tabViewContent/lotto.dart';
import 'package:glory/screens/homeNavigation/more_tabViewContent/sports.dart';
import 'package:glory/screens/subScreens/search.dart';

class more extends StatelessWidget {

  final cWidgets _widgets = cWidgets();
  final String _dummyProfilePicture = "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              child: const SizedBox(
                  width: double.maxFinite,
                  child: AutoSizeText(
                    "More",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                    maxLines: 1,
                  ))),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: _widgets.profileButton(context: context, profileImageURL: _dummyProfilePicture, personalProfile: true),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(
                    height: 0.0,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                TabBar(
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "Sports",
                    ),
                    Tab(
                      text: "Glory Lotto",
                    )
                  ],
                ),
              ],
            ),
          ),
          actions: [
            _widgets.wheelButton(context: context),
            _widgets.cartButton(context: context),
          ],
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            sports(),
            lotto(),
          ],
        ),
      ),
    );
  }
}
