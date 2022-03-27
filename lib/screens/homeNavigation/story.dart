import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/subScreens/profile.dart';
import 'package:glory/screens/subScreens/storyMusicProfile.dart';

class story extends StatelessWidget {

  final cWidgets _widgets = cWidgets();
  final String _dummyProfilePicture = "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.black,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
            ),
            title: const Text(
              "Glory Story",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
            centerTitle: false,
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: _widgets.profileButton(context: context, profileImageURL: _dummyProfilePicture, personalProfile: true),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: SizedBox(
                width: 150.0,
                child: TabBar(
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Poppins',
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Poppins',
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: "Following",
                    ),
                    Tab(
                      text: "For You",
                    ),
                  ],
                  indicator: const UnderlineTabIndicator(
                    borderSide:
                        BorderSide(width: 0.0, color: Colors.transparent),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  labelPadding: EdgeInsets.zero,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                splashColor: Theme.of(context).primaryColor,
                splashRadius: 20.0,
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  splashColor: Theme.of(context).primaryColor,
                  splashRadius: 20.0,
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  )),
              // IconButton(
              //     onPressed: () {},
              //     splashColor: Theme.of(context).primaryColor,
              //     splashRadius: 20.0,
              //     icon: ImageIcon(
              //       AssetImage('assets/images/spin_wheel.png'),
              //       color: Colors.white,
              //     )),
              // IconButton(
              //     onPressed: () {},
              //     splashColor: Theme.of(context).primaryColor,
              //     splashRadius: 20.0,
              //     icon: ImageIcon(
              //       AssetImage('assets/images/cart_bag.png'),
              //       color: Colors.white,
              //     )),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        PageView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: FractionalOffset.center,
                                      child: Text(
                                        "Video Page# " + index.toString(),
                                        style: const TextStyle(color: Colors.white),
                                      )),
                                  Align(
                                      alignment: FractionalOffset.bottomLeft,
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.3,
                                          height: 180.0,
                                          padding: const EdgeInsets.only(
                                              bottom: 75.0, left: 10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Title",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "Subtitle",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.music_note_outlined,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    size: 20.0,
                                                  ),
                                                  const Text(
                                                    "Music Title",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ))),
                                  Align(
                                    alignment: FractionalOffset.bottomRight,
                                    child: Container(
                                      width: 80.0,
                                      padding: const EdgeInsets.only(
                                          top: 100.0,
                                          bottom: 75.0,
                                          right: 5.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {Get.to(()=>profile(personalProfile: false), transition: Transition.circularReveal, fullscreenDialog: true);},
                                            child: SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Container(
                                                height: 40.0,
                                                width: 40.0,
                                                padding: const EdgeInsets.all(
                                                    10.0),
                                                decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/sample_image.png'),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.favorite_outline,
                                                    color: Colors.white,
                                                    size: 30.0,
                                                  ),
                                                  Text(
                                                    "350.9K",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.comment_outlined,
                                                    color: Colors.white,
                                                    size: 25.0,
                                                  ),
                                                  Text(
                                                    "500",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.share,
                                                    color: Colors.white,
                                                    size: 25.0,
                                                  ),
                                                  Text(
                                                    "Share",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 15.0),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(() => storyMusicProfile(), transition: Transition.circularReveal, fullscreenDialog: true);
                                            },
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: const Icon(
                                                Icons
                                                    .multitrack_audio_outlined,
                                                color: Colors.white,
                                                size: 30.0,
                                              ),
                                              radius: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.vertical,
                        ),
                        PageView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: FractionalOffset.center,
                                      child: Text(
                                        "Video Page# " + index.toString(),
                                        style: const TextStyle(color: Colors.white),
                                      )),
                                  Align(
                                      alignment: FractionalOffset.bottomLeft,
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.3,
                                          height: 180.0,
                                          padding: const EdgeInsets.only(
                                              bottom: 75.0, left: 10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Title",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "Subtitle",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.0),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.music_note_outlined,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    size: 20.0,
                                                  ),
                                                  const Text(
                                                    "Music Title",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ))),
                                  Align(
                                    alignment: FractionalOffset.bottomRight,
                                    child: Container(
                                      width: 80.0,
                                      padding: const EdgeInsets.only(
                                          top: 100.0,
                                          bottom: 75.0,
                                          right: 5.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {Get.to(()=>profile(personalProfile: false), transition: Transition.circularReveal, fullscreenDialog: true);},
                                            child: SizedBox(
                                              height: 50,
                                              width: 45,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        FractionalOffset
                                                            .topCenter,
                                                    child: Container(
                                                      height: 40.0,
                                                      width: 40.0,
                                                      padding:
                                                          const EdgeInsets
                                                              .all(10.0),
                                                      decoration:
                                                          BoxDecoration(
                                                        image:
                                                            const DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/sample_image.png'),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    50.0),
                                                        border: Border.all(
                                                            width: 0.5,
                                                            color:
                                                                Colors.grey),
                                                      ),
                                                    ),
                                                  ),
                                                  const Align(
                                                    alignment:
                                                        FractionalOffset
                                                            .bottomCenter,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.redAccent,
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 10.0,
                                                      ),
                                                      radius: 8.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.favorite_outline,
                                                    color: Colors.white,
                                                    size: 30.0,
                                                  ),
                                                  Text(
                                                    "350.9K",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.comment_outlined,
                                                    color: Colors.white,
                                                    size: 25.0,
                                                  ),
                                                  Text(
                                                    "500",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.share,
                                                    color: Colors.white,
                                                    size: 25.0,
                                                  ),
                                                  Text(
                                                    "Share",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 15.0),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(() => storyMusicProfile(), transition: Transition.circularReveal, fullscreenDialog: true);
                                            },
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              child: const Icon(
                                                Icons
                                                    .multitrack_audio_outlined,
                                                color: Colors.white,
                                                size: 30.0,
                                              ),
                                              radius: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.vertical,
                        ),
                      ],
                    ),

          )
          // Stack(
          //   children: [
          //     Align(
          //       alignment: FractionalOffset.center,
          //       child: PageView.builder(itemBuilder: (BuildContext context, int index){
          //         return Container();
          //       }),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
