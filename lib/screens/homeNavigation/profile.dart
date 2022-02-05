import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_add_alt,
              color: Colors.black,
            ),
          ),
          title: InkWell(
              onTap: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    )
                  ])),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.black,
                ))
          ],
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).backgroundColor,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                    backgroundColor: Colors.black,
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
                    color: Colors.black,
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
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 10.0)),
                  OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.bookmark_outline),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                ],
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                enableFeedback: true,
                onTap: (index) {},
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_4x4_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
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
