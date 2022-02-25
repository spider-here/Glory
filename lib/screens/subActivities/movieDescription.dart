import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class movieDescription extends StatelessWidget {
  String _movieName = "Movie Name";
  String _videoMaxQuality = "4K";
  String _movieTotalMinutes = "165";
  String _movieRating = "8.5";
  String _movieReleaseDate = "December 12, 2021";
  String _movieDescription =
      "Lorem Ipsum is simply dummy text of the printing and typesetting"
      " industry. Lorem Ipsum has been the industry's standard dummy text ever since"
      " the 1500s, when an unknown printer took a galley of type and scrambled it to"
      " make a type specimen book. It has survived not only five centuries, but also "
      "the leap into electronic typesetting, remaining essentially unchanged. It was"
      " popularised in the 1960s with the release of Letraset sheets containing Lorem "
      "Ipsum passages, and more recently with desktop publishing software like Aldus "
      "PageMaker including versions of Lorem Ipsum.";
  List<String> _movieGenre = ["Action", "Comedy", "Romance"];
  List<String> _relatedMoviesUrls = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              ListTile(
                title: Row(
                  children: [
                    Text(
                      _movieName,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 10.0)),
                    Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(color: Colors.white, width: 0.5)),
                        child: Text(
                          _videoMaxQuality,
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        )),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Icon(
                        Icons.access_time_outlined,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 4.0)),
                    Text(
                      _movieTotalMinutes + " minutes",
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 15.0)),
                    Icon(
                      Icons.star_rate_outlined,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    Padding(padding: const EdgeInsets.only(left: 4.0)),
                    Text(
                      _movieRating,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: Text(
                          "Release date",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: Text(
                          "Genre",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Text(
                        _movieReleaseDate,
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: GridView.builder(
                        padding: EdgeInsets.only(top: 10.0),
                        itemCount: _movieGenre.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Center(
                                child: Text(
                              _movieGenre[index],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0),
                            )),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 2.4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                  title: Text(
                    "Description",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  subtitle: Text(_movieDescription,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0))),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  "Related Movies",
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
                    itemCount: _relatedMoviesUrls.length,
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
                                      NetworkImage(_relatedMoviesUrls[index]),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 30.0))
            ],
          ),
        ));
  }
}
