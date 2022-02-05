import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glory/screens/homeNavigation/music.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.black,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 0.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Stack(
              children: [
                Align(
                  alignment: FractionalOffset.center,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          child: PageView.builder(itemBuilder: (BuildContext context, int index){
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  Align(
                                      alignment:FractionalOffset.center,
                                      child: Text("Video Page# " + index.toString(), style: TextStyle(color: Colors.white),)
                                  ),
                                  Align(
                                      alignment:FractionalOffset.bottomLeft,
                                      child: Container(
                                          width: MediaQuery.of(context).size.width/1.3,
                                          height: 180.0,
                                          padding: const EdgeInsets.only(bottom: 75.0, left: 10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Title", style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
                                              Text("Subtitle", style: TextStyle(color: Colors.white, fontSize: 12.0),),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.music_note_outlined, color: Theme.of(context).primaryColor, size: 20.0,),
                                                  Text("Music Title", style: TextStyle(color: Colors.white, fontSize: 12.0),),
                                                ],
                                              ),
                                            ],
                                          ))
                                  ),
                                  Align(
                                    alignment: FractionalOffset.bottomRight,
                                    child: Container(
                                      width: 80.0,
                                      padding: const EdgeInsets.only(top: 100.0, bottom: 75.0, right: 5.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap:(){},
                                            child: Container(
                                              height: 50,
                                              width: 45,
                                              child: Stack(
                                                children: [
                                                  Align(alignment: FractionalOffset.topCenter,
                                                    child: Container(
                                                      height: 40.0,
                                                      width: 40.0,
                                                      padding: const EdgeInsets.all(10.0),
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/sample_image.png'),
                                                        ),
                                                        borderRadius: BorderRadius.circular(50.0),
                                                        border: Border.all(width: 0.5, color: Colors.grey),
                                                      ),
                                                    ),),
                                                  Align(
                                                    alignment: FractionalOffset.bottomCenter,
                                                    child: CircleAvatar(
                                                      backgroundColor: Colors.redAccent,
                                                      child: Icon(Icons.add, color: Colors.white, size: 10.0,),
                                                      radius: 8.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(top: 5.0),),
                                          InkWell(
                                            onTap:(){},
                                            child: Container(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.favorite_outline, color: Colors.white, size: 30.0,),
                                                  Text("350.9K", style: TextStyle(color: Colors.white, fontSize: 10.0),)
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(top: 5.0),),
                                          InkWell(
                                            onTap:(){},
                                            child: Container(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.comment_outlined, color: Colors.white, size: 25.0,),
                                                  Text("500", style: TextStyle(color: Colors.white, fontSize: 10.0),)
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(top: 5.0),),
                                          InkWell(
                                            onTap:(){},
                                            child: Container(
                                              height: 60,
                                              width: 45,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.share, color: Colors.white, size: 25.0,),
                                                  Text("Share", style: TextStyle(color: Colors.white, fontSize: 10.0),)
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(top: 15.0),),
                                          InkWell(
                                            onTap:(){Get.to(()=>music());},
                                            child: CircleAvatar(
                                              backgroundColor: Colors.grey.shade800,
                                              child: Icon(Icons.multitrack_audio_outlined, color: Colors.white, size: 30.0,),
                                              radius: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),);
                          },
                            itemCount: 10,
                            scrollDirection: Axis.vertical,),
                        ),
                        Container(
                          child: PageView.builder(itemBuilder: (BuildContext context, int index){
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: Stack(
                              children: [
                                Align(
                                  alignment:FractionalOffset.center,
                                    child: Text("Video Page# " + index.toString(), style: TextStyle(color: Colors.white),)
                                ),
                                Align(
                                  alignment:FractionalOffset.bottomLeft,
                                    child: Container(
                                        width: MediaQuery.of(context).size.width/1.3,
                                        height: 180.0,
                                        padding: const EdgeInsets.only(bottom: 75.0, left: 10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Title", style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
                                            Text("Subtitle", style: TextStyle(color: Colors.white, fontSize: 12.0),),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.music_note_outlined, color: Theme.of(context).primaryColor, size: 20.0,),
                                                Text("Music Title", style: TextStyle(color: Colors.white, fontSize: 12.0),),
                                              ],
                                            ),
                                          ],
                                        ))
                                ),
                                Align(
                                  alignment: FractionalOffset.bottomRight,
                                  child: Container(
                                    width: 80.0,
                                    padding: const EdgeInsets.only(top: 100.0, bottom: 75.0, right: 5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap:(){},
                                          child: Container(
                                            height: 50,
                                            width: 45,
                                            child: Stack(
                                              children: [
                                                Align(alignment: FractionalOffset.topCenter,
                                                child: Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  padding: const EdgeInsets.all(10.0),
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/sample_image.png'),
                                                    ),
                                                    borderRadius: BorderRadius.circular(50.0),
                                                    border: Border.all(width: 0.5, color: Colors.grey),
                                                  ),
                                                ),),
                                                Align(
                                                  alignment: FractionalOffset.bottomCenter,
                                                  child: CircleAvatar(
                                                      backgroundColor: Colors.redAccent,
                                                      child: Icon(Icons.add, color: Colors.white, size: 10.0,),
                                                    radius: 8.0,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 5.0),),
                                        InkWell(
                                          onTap:(){},
                                          child: Container(
                                            height: 60,
                                            width: 45,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.favorite_outline, color: Colors.white, size: 30.0,),
                                                Text("350.9K", style: TextStyle(color: Colors.white, fontSize: 10.0),)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 5.0),),
                                        InkWell(
                                          onTap:(){},
                                          child: Container(
                                            height: 60,
                                            width: 45,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.comment_outlined, color: Colors.white, size: 25.0,),
                                                Text("500", style: TextStyle(color: Colors.white, fontSize: 10.0),)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 5.0),),
                                        InkWell(
                                          onTap:(){},
                                          child: Container(
                                            height: 60,
                                            width: 45,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.share, color: Colors.white, size: 25.0,),
                                                Text("Share", style: TextStyle(color: Colors.white, fontSize: 10.0),)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(top: 15.0),),
                                        InkWell(
                                          onTap:(){Get.to(()=>music());},
                                            child: CircleAvatar(
                                              backgroundColor: Colors.grey.shade800,
                                              child: Icon(Icons.multitrack_audio_outlined, color: Colors.white, size: 30.0,),
                                              radius: 20.0,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),);
                          },
                            itemCount: 10,
                            scrollDirection: Axis.vertical,),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: Container(
                    height: 50.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: FractionalOffset.centerRight,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 20.0, left: 20.0),
                            child: InkWell(
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: FractionalOffset.center,
                          child: Container(
                            width: 150.0,
                            child: TabBar(
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 14.0, fontFamily: 'Poppins'),
                              labelStyle: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                              ),
                              tabs: [
                                Tab(
                                  text: "Following",
                                ),
                                Tab(
                                  text: "For You",
                                ),
                              ],
                              indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(width: 0.0, color: Colors.transparent),),
                              indicatorSize: TabBarIndicatorSize.label,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              labelPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
