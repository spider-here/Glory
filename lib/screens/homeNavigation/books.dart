import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/subScreens/bookDescription.dart';
import 'package:glory/screens/subScreens/search.dart';

class books extends StatelessWidget{
  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  final String _dummyPrice = "9.99";
  final double _dummyRating = 4.0;

  final cWidgets _widgets = cWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Books",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 1,
                ))),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white),
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
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: const Text(
              "Popular Books",
              style: TextStyle(
                  color: Colors.white,
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
            height: MediaQuery.of(context).size.width / 1.5,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: () {Get.to(()=>bookDescription(), transition: Transition.size);},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 5,
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: FractionalOffset.centerLeft,
                                      child: Card(
                                        elevation: 4.0,
                                        margin: const EdgeInsets.all(0.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width / 3.3,
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 2.0,
                                                  color: Colors.black),
                                              borderRadius: BorderRadius.circular(10.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(_dummyAlbum[index]),
                                                  fit: BoxFit.cover)
                                          ),
                                        ),
                                      )
                                  ),
                                  Align(
                                    alignment: FractionalOffset.centerRight,
                                    child: Card(
                                      elevation: 10.0,
                                      margin: const EdgeInsets.all(0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width / 3.3,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0)
                                          ),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Colors.black
                                          ),
                                            image: DecorationImage(
                                                image: NetworkImage(_dummyAlbum[index]),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                ]
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Book Name",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.white),
                                  ),
                                  const Text(
                                    "Author Name",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.grey),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("\$" + _dummyPrice, style: const TextStyle(
                                          fontSize: 12.0, color: Colors.white),),
                                      const Spacer(),
                                      RatingBarIndicator(
                                        rating: _dummyRating,
                                        unratedColor: Colors.white,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        itemCount: 5,
                                        itemSize: 10.0,
                                        direction: Axis.horizontal,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: const Text(
              "Daily Recommended",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text("See All"),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.5,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {Get.to(()=>bookDescription(), transition: Transition.size);},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: NetworkImage(_dummyAlbum[index]),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Theme.of(context).primaryColor
                                    ),
                                    child: const Text(
                                      "Category",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.white),
                                    ),
                                  ),
                                  const Padding(padding: EdgeInsets.only(top: 5.0)),
                                  Text(
                                    "Author Name".toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                  const Padding(padding: EdgeInsets.only(top: 5.0)),
                                  const Text(
                                    "(" "Book Name" ")",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                  const Padding(padding: EdgeInsets.only(top: 5.0)),
                                  const Text(
                                    "Description",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                ],
                              ),
                        ),
                      ));
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: const Text(
              "Top Free",
              style: TextStyle(
                  color: Colors.white,
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
            height: MediaQuery.of(context).size.width / 1.6,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: () {Get.to(()=>bookDescription(), transition: Transition.size);},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Stack(
                                  children: [
                                    Align(
                                        alignment: FractionalOffset.centerLeft,
                                        child: Card(
                                          elevation: 4.0,
                                          margin: const EdgeInsets.all(0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width / 3.3,
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 2.0,
                                                    color: Colors.black),
                                                borderRadius: BorderRadius.circular(10.0),
                                                image: DecorationImage(
                                                    image: NetworkImage(_dummyAlbum[index]),
                                                    fit: BoxFit.cover)
                                            ),
                                          ),
                                        )
                                    ),
                                    Align(
                                      alignment: FractionalOffset.centerRight,
                                      child: Card(
                                        elevation: 10.0,
                                        margin: const EdgeInsets.all(0.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width / 3.3,
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.only(
                                                  topRight: Radius.circular(5.0),
                                                  bottomRight: Radius.circular(5.0)
                                              ),
                                              border: Border.all(
                                                  width: 2.0,
                                                  color: Colors.black
                                              ),
                                              image: DecorationImage(
                                                  image: NetworkImage(_dummyAlbum[index]),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Book Name",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.white),
                                      ),
                                      Text(
                                        "Author Name",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12.0, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ListTile(
            title: const Text(
              "Newest",
              style: TextStyle(
                  color: Colors.white,
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
            // height: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: _dummyAlbum.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {Get.to(()=>bookDescription(), transition: Transition.size);},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width/3.9,
                                child: Stack(
                                    children: [
                                      Align(
                                          alignment: FractionalOffset.centerLeft,
                                          child: Card(
                                            elevation: 4.0,
                                            margin: const EdgeInsets.all(0.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width/5,
                                              height: MediaQuery.of(context).size.width/3.5,
                                              decoration: BoxDecoration(
                                                  border: Border.all(width: 2.0,
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  image: DecorationImage(
                                                      image: NetworkImage(_dummyAlbum[index]),
                                                      fit: BoxFit.cover)
                                              ),
                                            ),
                                          )
                                      ),
                                      Align(
                                        alignment: FractionalOffset.centerRight,
                                        child: Card(
                                          elevation: 10.0,
                                          margin: const EdgeInsets.all(0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width/5,
                                            height: MediaQuery.of(context).size.width/3.5,
                                            decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.only(
                                                    topRight: Radius.circular(5.0),
                                                    bottomRight: Radius.circular(5.0)
                                                ),
                                                border: Border.all(
                                                    width: 2.0,
                                                    color: Colors.black
                                                ),
                                                image: DecorationImage(
                                                    image: NetworkImage(_dummyAlbum[index]),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0),
                            ),
                             Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Book Name",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.white),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                      ),
                                      const Text(
                                        "Author Name",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12.0, color: Colors.grey),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                      ),
                                      RatingBarIndicator(
                                        rating: _dummyRating,
                                        unratedColor: Colors.white,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        itemCount: 5,
                                        itemSize: 15.0,
                                        direction: Axis.horizontal,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5.0),
                                      ),
                                      Row(
                                        children: [
                                          Text("\$" + _dummyPrice, style: TextStyle(
                                              fontSize: 12.0, color: Theme.of(context).primaryColor),),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 5.0),
                                          ),
                                          Text("\$" + _dummyPrice, style: const TextStyle(
                                              fontSize: 12.0, color: Colors.white, decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),

                                    ],
                                  ),
                                )
                          ],
                        ),
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