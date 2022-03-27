import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/subScreens/messages/chat.dart';

class profile extends StatelessWidget {
  String? _profileImageURL;
  final cWidgets _widgets = cWidgets();
  bool personalProfile;
  bool isFollowed = true;


  profile({required this.personalProfile});

  @override
  Widget build(BuildContext context) {
    return personalProfile?
    DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: MediaQuery.of(context).platformBrightness == Brightness.light? Brightness.light:Brightness.dark,
          statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark? Brightness.light:Brightness.dark,),
          title: InkWell(
              onTap: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Username",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    )
                  ])),
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Theme.of(context).textTheme.bodyText1?.color
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          bottom: const PreferredSize(preferredSize: Size.fromHeight(2.0),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 0.0,
                thickness: 0.5,
                color: Colors.grey,
              ),
            ),
          ),
          actions: [
            _widgets.wheelButton(context: context),
            _widgets.cartButton(context: context),

          ],
        ),
        body: SingleChildScrollView(
          primary: true,
          physics: const BouncingScrollPhysics(),
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
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _widgets.profilePageStats(
                    context: context,
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
                    child: const Text(
                      "Edit Profile",
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(
                                width: 1.0,
                                color: Colors.grey
                            )
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(
                                fontFamily: 'Poppins',
                            )
                        ),
                      foregroundColor: MaterialStateProperty.all(Theme.of(context).textTheme.bodyText1?.color),
                    )
                  ),
                  const Padding(padding: EdgeInsets.only(right: 10.0)),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Icon(Icons.bookmark_outline),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                              width: 1.0,
                              color: Colors.grey
                          )
                      ),
                      foregroundColor: MaterialStateProperty.all(Theme.of(context).textTheme.bodyText1?.color),
                    )
                  ),
                ],
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Theme.of(context).primaryColor,
                enableFeedback: true,
                onTap: (index) {},
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.calendar_today_rounded,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.favorite_outline_rounded,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),

                ],
              ),
        SizedBox(
          height: MediaQuery.of(context).size.height/1.2,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
              children: [
              GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
                    childAspectRatio: 9/16,),
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return Image.asset('assets/images/sample_image.png', fit: BoxFit.cover,);
                  }),
        GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                  childAspectRatio: 9/16,),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return Image.asset('assets/images/sample_image.png', fit: BoxFit.cover,);
                }),
          ]),
        ),
            ],
          ),
        ),
      ),
    )
        :
    Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).backgroundColor,
            statusBarBrightness: MediaQuery.of(context).platformBrightness == Brightness.light? Brightness.light:Brightness.dark,
            statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark? Brightness.light:Brightness.dark,),
          title: InkWell(
              onTap: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Username",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    )
                  ])),
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Theme.of(context).textTheme.bodyText1?.color
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          bottom: const PreferredSize(preferredSize: Size.fromHeight(2.0),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 0.0,
                thickness: 0.5,
                color: Colors.grey,
              ),
            ),
          ),
          actions: [
            _widgets.wheelButton(context: context),
            _widgets.cartButton(context: context),
          ],
        ),
        body: SingleChildScrollView(
          primary: true,
          physics: const BouncingScrollPhysics(),
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
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _widgets.profilePageStats(
                    context: context,
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
                      onPressed: ()=> isFollowed? Get.to(()=>chat(), transition: Transition.size) : (){},
                      child: isFollowed?const Text(
                        "Message",
                      ):const Text("Follow"),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(
                                width: 1.0,
                                color: Colors.grey
                            )
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(
                              fontFamily: 'Poppins',
                            )
                        ),
                        foregroundColor: MaterialStateProperty.all(Theme.of(context).textTheme.bodyText1?.color),
                      )
                  ),
                  const Padding(padding: EdgeInsets.only(right: 10.0)),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Icon(Icons.keyboard_arrow_down_rounded),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(
                                width: 1.0,
                                color: Colors.grey
                            )
                        ),
                        foregroundColor: MaterialStateProperty.all(Theme.of(context).textTheme.bodyText1?.color),
                      )
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child:
                      GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 2.0,
                              crossAxisSpacing: 2.0,
                            childAspectRatio: 9/16,),
                          itemCount: 20,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index){
                            return Image.asset('assets/images/sample_image.png', fit: BoxFit.cover,);
                          }),
              ),
            ],
          ),
        ),
    )
    ;
  }
}
