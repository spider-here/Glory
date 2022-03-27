import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/subScreens/musicPlayer.dart';
import 'package:glory/screens/subScreens/search.dart';

class music extends StatelessWidget {
  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  final cWidgets _widgets = cWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: MediaQuery.of(context).platformBrightness == Brightness.light? Brightness.light:Brightness.dark,
          statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark? Brightness.light:Brightness.dark,
        ),
        title: InkWell(
            onTap: () {
              Get.to(() => search(), fullscreenDialog: true);
            },
            child: const SizedBox(
                width: double.maxFinite,
                child: AutoSizeText("Music", textAlign: TextAlign.center, maxLines: 1,))),
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18.0),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: _widgets.profileButton(context: context, profileImageURL: _dummyAlbum[0], personalProfile: true),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(2.0),
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            margin: const EdgeInsets.only(top: 10.0),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
              ),
              items: _dummyAlbum.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {Get.to(()=>musicPlayer(), transition: Transition.size);},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage(i), fit: BoxFit.cover)),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: Text(
              "Popular Playlists",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text("See All"),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {Get.to(()=>musicPlayer(), transition: Transition.size);},
                    child: Column(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: NetworkImage(_dummyAlbum[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Song Name",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14.0,),
                              ),
                              Text(
                                "Artist Name",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                    fontSize: 12.0,),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: Text(
              "Top Songs",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {Get.to(()=>musicPlayer());},
              child: const Text("See All"),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _dummyAlbum.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: (){Get.to(()=>musicPlayer(), transition: Transition.size);},
                  dense: true,
                  leading: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(
                    "Title",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith( fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "Subtile",
                    style: Theme.of(context).textTheme.bodyText2?.copyWith( fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    "5:30",
                    style: Theme.of(context).textTheme.bodyText2?.copyWith( fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: Text(
              "Albums",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {Get.to(()=>musicPlayer());},
              child: const Text("See All"),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {Get.to(()=>musicPlayer(), transition: Transition.size);},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage(_dummyAlbum[index]),
                                fit: BoxFit.cover)),
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.width/5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Song Name",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                                Text(
                                  "Artist Name",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: Text(
              "Artists",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {Get.to(()=>musicPlayer());},
              child: const Text("See All"),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {Get.to(()=>musicPlayer(), transition: Transition.size);},
                    child: Column(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: NetworkImage(_dummyAlbum[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Song Name",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14.0,),
                              ),
                              Text(
                                "Artist Name",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                    fontSize: 12.0,),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: Text(
              "What's New",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {Get.to(()=>musicPlayer());},
              child: const Text("See All"),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {Get.to(()=>musicPlayer(), transition: Transition.size);},
                    child: Column(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: NetworkImage(_dummyAlbum[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Text(
                                "Song Name",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14.0,),
                              ),
                              Text(
                                "Artist Name",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                    fontSize: 12.0,),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 30.0)),
        ],
      ),
    );
  }
}
