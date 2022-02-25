import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/Utils/cWidgets.dart';

class profile extends StatelessWidget {
  String? _profileImageURL;
  cWidgets _widgets = new cWidgets();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).backgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,),
          title: InkWell(
              onTap: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    )
                  ])),
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          backgroundColor: Colors.black,
          elevation: 0.0,
          bottom: PreferredSize(preferredSize: Size.fromHeight(2.0),
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
                )),
            IconButton(
                onPressed: () {},
                splashColor: Theme.of(context).primaryColor,
                splashRadius: 20.0,
                icon: ImageIcon(
                  AssetImage('assets/images/cart_bag.png'),
                  color: Colors.white,
                )),

          ],
        ),
        body: SingleChildScrollView(
          primary: true,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.0,
                    child: ClipOval(
                      child: _profileImageURL != null
                          ? Image.network(_profileImageURL!)
                          : Image.asset(
                              'assets/images/sample_image.png',
                            ),
                    )),
              ),
              Text(
                "@user_name",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _widgets.profilePageStats(
                      totalFollowers: "14",
                      totalFollowing: "38",
                      totalLikes: "91",
                      onTapFollowers: () {},
                      onTapFollowing: () {},
                      onTapLikes: () {})),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(
                                width: 1.0,
                                color: Colors.white
                            )
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    )
                  ),
                  Padding(padding: const EdgeInsets.only(right: 10.0)),
                  OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.bookmark_outline),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(
                              width: 1.0,
                              color: Colors.white
                          )
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    )
                  ),
                ],
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                enableFeedback: true,
                onTap: (index) {},
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_4x4_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
        SizedBox(
          height: MediaQuery.of(context).size.height/1.2,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            physics: BouncingScrollPhysics(),
              children: [
              GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0),
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return Image.asset('assets/images/sample_image.png');
                  }),
        GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return Image.asset('assets/images/sample_image.png');
                }),
          ]),
        ),
        // Container(
        //   height: MediaQuery.of(context).size.height/1.2,
        //   width: MediaQuery.of(context).size.width,
        //   child:PageView(
        //         physics: NeverScrollableScrollPhysics(),
        //         controller: _tabBodyController,
        //         onPageChanged: (index) {},
        //         children: [
        //
        //         ],
        //   )),
            ],
          ),
        ),
      ),
    );
  }
}
