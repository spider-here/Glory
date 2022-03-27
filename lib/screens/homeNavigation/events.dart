import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:glory/Utils/cWidgets.dart';
import 'package:glory/screens/subScreens/eventDescription.dart';
import 'package:glory/screens/subScreens/search.dart';

class events extends StatelessWidget{

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
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
                child: AutoSizeText("Events", textAlign: TextAlign.center, maxLines: 1,))),
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
          ListTile(
            title: Text(
              "Trending Events near you",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
                      onTap: (){Get.to(()=>eventDescription(), transition: Transition.size);},
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
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)
                                    ),
                                    color: Theme.of(context).primaryColor
                                ),
                                child: const Center(child: Text("Top", style: TextStyle(color: Colors.white, fontSize: 12.0),)),
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
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0)
                                      ),
                                      color: Theme.of(context).primaryColor
                                  ),
                                  child: const Center(child: Icon(Icons.bookmark_outline, color: Colors.white, size: 20.0,)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)
                                  ),
                                ),
                                child: ListTile(
                                  dense: true,
                                  title: const Text("This is the title", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                                  subtitle: const Text("This is the subtitle", style: TextStyle(color: Colors.white,), overflow: TextOverflow.ellipsis),
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
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text("See All"),
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
                      onTap: (){Get.to(()=>eventDescription(), transition: Transition.size);},
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
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                              ),
                            ),
                            child: const Center(child: Text("Title", overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white),)),
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
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text("See All"),
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
                      onTap: (){Get.to(()=>eventDescription(), transition: Transition.size);},
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
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                              ),
                            ),
                            child: const ListTile(
                              dense: true,
                              title: Text("Title", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), overflow: TextOverflow.ellipsis,),
                              subtitle: Text("Subtitle",  overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white),),
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
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text("See All"),
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
                      onTap: (){Get.to(()=>eventDescription(), transition: Transition.size);},
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
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                              ),
                            ),
                            child: const Center(child: Text("Title", overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white),)),
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