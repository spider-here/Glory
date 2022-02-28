import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:glory/screens/subScreens/eventDescription.dart';

class events extends StatelessWidget{

  List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          ListTile(
            title: Text(
              "Trending Events near you",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: MediaQuery.of(context).size.width/2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _dummyAlbum.length,
                padding: const EdgeInsets.only(left: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: (){Get.to(()=>eventDescription());},
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: NetworkImage(_dummyAlbum[index]),
                              fit: BoxFit.cover
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: FractionalOffset.topLeft,
                              child: Container(
                                width: 60.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)
                                    ),
                                    color: Theme.of(context).primaryColor
                                ),
                                child: Center(child: Text("Top", style: TextStyle(color: Colors.white, fontSize: 12.0),)),
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.topRight,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                                child: Container(
                                  width: 25.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0)
                                      ),
                                      color: Theme.of(context).primaryColor
                                  ),
                                  child: Center(child: Icon(Icons.bookmark_outline, color: Colors.white, size: 20.0,)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)
                                  ),
                                ),
                                child: ListTile(
                                  dense: true,
                                  title: Text("This is the title", style: TextStyle(fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                                  subtitle: Text("This is the subtitle",  overflow: TextOverflow.ellipsis),
                                  trailing: Text("\$99.99", style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          ListTile(
            title: Text(
              "Category",
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
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: MediaQuery.of(context).size.width/4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _dummyAlbum.length,
                padding: const EdgeInsets.only(left: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: (){Get.to(()=>eventDescription());},
                      child: Container(
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: NetworkImage(_dummyAlbum[index]),
                              fit: BoxFit.cover
                          ),
                        ),
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                            width: double.maxFinite,
                            height: 30.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                              ),
                            ),
                            child: Center(child: Text("Title", overflow: TextOverflow.ellipsis,)),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          ListTile(
            title: Text(
              "Upcoming Events",
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
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: MediaQuery.of(context).size.width/2.5,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _dummyAlbum.length,
                padding: const EdgeInsets.only(left: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: (){Get.to(()=>eventDescription());},
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: NetworkImage(_dummyAlbum[index]),
                              fit: BoxFit.cover
                          ),
                        ),
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                              ),
                            ),
                            child: ListTile(
                              dense: true,
                              title: Text("Title", style: TextStyle(fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                              subtitle: Text("Subtitle",  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          ListTile(
            title: Text(
              "Nearest City",
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
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: MediaQuery.of(context).size.width/4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _dummyAlbum.length,
                padding: const EdgeInsets.only(left: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: (){Get.to(()=>eventDescription());},
                      child: Container(
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: NetworkImage(_dummyAlbum[index]),
                              fit: BoxFit.cover
                          ),
                        ),
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                            width: double.maxFinite,
                            height: 30.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                              ),
                            ),
                            child: Center(child: Text("Title", overflow: TextOverflow.ellipsis,)),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

}