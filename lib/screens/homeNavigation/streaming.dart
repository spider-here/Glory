import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/subScreens/movieDescription.dart';
import 'package:glory/screens/subScreens/profile.dart';
import 'package:glory/screens/subScreens/search.dart';

class streaming extends StatelessWidget {

  List<String> _dummyAlbum = [
        "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  String _dummyTitle = "This is the Title";
  String _dummyDescription = "This is the Description";
  String _dummyNewPrice = "96.7";
  String _dummyOldPrice = "110.5";

  cWidgets _widgets = new cWidgets();

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
                child: Container(width: double.maxFinite,
                    child: AutoSizeText("Live Streaming", textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0), maxLines: 1,))),
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.white),
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: _widgets.profileButton(context: context, profileImageURL: _dummyAlbum[0]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                        text: "Movies",
                      ),
                      Tab(
                        text: "Video Games",
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
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width/2,
                      margin: const EdgeInsets.only(top: 5.0),
                      child: CarouselSlider(
                        options: CarouselOptions(autoPlay: true,),
                        items: _dummyAlbum.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return InkWell(
                                onTap: (){Get.to(()=>movieDescription());},
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: NetworkImage(i),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Recommended for you",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Trending",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "New Release",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Comedy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Drama",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Fantasy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Horror",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Mystery",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Romance",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Thriller",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Western",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 30.0))
                  ],
                ),
              ),
              Container(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width/2,
                      margin: const EdgeInsets.only(top: 5.0),
                      child: CarouselSlider(
                        options: CarouselOptions(autoPlay: true,),
                        items: _dummyAlbum.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Stack(
                                  children: [
                                    Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Container(
                                        width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.width/2.3,
                                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF81DDAA),
                                                  Color(0xFF406752)
                                                ]
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.elliptical(200.0, 100.0),
                                              topRight: Radius.elliptical(1000.0, 200.0),
                                              bottomLeft: Radius.circular(50.0),
                                              bottomRight: Radius.circular(50.0),
                                            ),
                                          color: Theme.of(context).primaryColor
                                        ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: (){},
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Center(child: Icon(Icons.favorite_outline, color: Colors.black,)),
                                              radius: 16.0,
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(top: 10.0),),
                                          SizedBox(
                                            height: 25.0,
                                            width: 70.0,
                                            child: ElevatedButton(onPressed: (){}, child: Text("Watch Now", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),),
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.white),
                                              foregroundColor: MaterialStateProperty.all(Colors.black),
                                              padding: MaterialStateProperty.all(EdgeInsets.zero)
                                            ),),
                                          ),
                                          Padding(padding: const EdgeInsets.only(top: 10.0),),
                                          Text(_dummyTitle, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),),
                                          Padding(padding: const EdgeInsets.only(top: 5.0),),
                                          Text(_dummyDescription, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10.0, color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ),
                                    Align(
                                      alignment: FractionalOffset.topRight,
                                      child: InkWell(
                              onTap: (){Get.to(()=>movieDescription());},
                              child: Card(
                                        margin: EdgeInsets.only(right: 15.0),
                                        elevation: 6.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width/2.5,
                                          height: MediaQuery.of(context).size.width/4,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(i),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                      ),
                                      )
                                    )
                                  ]
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Free Demo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 3,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                                child: Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(_dummyTitle, style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Hottest Deals",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: MediaQuery.of(context).size.width/5,
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                        ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(_dummyTitle, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),),
                                        Spacer(),
                                        Text(_dummyDescription, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 12.0,),),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Text("\$" + _dummyOldPrice, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 10.0, decoration: TextDecoration.lineThrough),),
                                            Spacer(flex: 1,),
                                            Text("\$" + _dummyNewPrice, overflow: TextOverflow.ellipsis, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12.0,),),
                                            Spacer(flex: 3,),
                                            Icon(Icons.favorite_outline, color: Colors.white,),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Trending",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 3,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                                  children: [Align(
                                    alignment: FractionalOffset.centerLeft,
                                    child: Text(_dummyTitle,  overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                    Align(
                                      alignment: FractionalOffset.bottomLeft,
                                      child: Row(
                                        children: [
                                          Text("\$" + _dummyNewPrice, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, fontSize: 14.0),),
                                          Padding(padding: const EdgeInsets.only(right: 10.0)),
                                          Text("\$" + _dummyOldPrice, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, decoration: TextDecoration.lineThrough, fontSize: 10.0)),
                                        ],
                                      ),
                                    )
                                  ]
                                ),
                                )
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Most Watched",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Browse By Collection",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 3,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                                child: Align(
                                  alignment: FractionalOffset.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(_dummyTitle, style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "What We're Watching",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: MediaQuery.of(context).size.width/5,
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(_dummyTitle, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),),
                                        Spacer(),
                                        Text(_dummyDescription, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 12.0,),),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Text("\$" + _dummyOldPrice, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 10.0, decoration: TextDecoration.lineThrough),),
                                            Spacer(flex: 1,),
                                            Text("\$" + _dummyNewPrice, overflow: TextOverflow.ellipsis, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12.0,),),
                                            Spacer(flex: 3,),
                                            Icon(Icons.favorite_outline, color: Colors.white,),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    ListTile(
                      title: Text(
                        "Coming Soon",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 3,
                      child: ListView.builder(
                          itemCount: _dummyAlbum.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => movieDescription());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                        NetworkImage(_dummyAlbum[index]),
                                        fit: BoxFit.cover)),
                                child: Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(_dummyTitle, style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 30.0))
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
