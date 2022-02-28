import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class eventDescription extends StatelessWidget {
  List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  String _dummyTitle = "This is the Title";
  String _dummySubTitle = "This is the Subtitle";
  String _dummyPrice = "96.7";
  String _dummyDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting"
      " industry. Lorem Ipsum has been the industry's standard dummy text ever since"
      " the 1500s, when an unknown printer took a galley of type and scrambled it to"
      " make a type specimen book. It has survived not only five centuries, but also "
      "the leap into electronic typesetting, remaining essentially unchanged. It was"
      " popularised in the 1960s with the release of Letraset sheets containing Lorem "
      "Ipsum passages, and more recently with desktop publishing software like Aldus "
      "PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 1.2,
                child: Stack(
                  children: [
                    Align(
                        alignment: FractionalOffset.topCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 1.1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20.0)),
                        )),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Card(
                        color: Colors.white,
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: ListTile(
                            dense: true,
                            title: Text(
                              _dummyTitle,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: _dummySubTitle,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                TextSpan(
                                    text: "\n\$" + _dummyPrice,
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis)),
                              ]),
                            ),
                            trailing: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0, color: Colors.black),
                                  image: DecorationImage(
                                      image: NetworkImage(_dummyAlbum[0]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: ListTile(
                      dense: true,
                      contentPadding: const EdgeInsets.all(0.0),
                      horizontalTitleGap: 5.0,
                      leading: CircleAvatar(
                        radius: 30.0,
                      ),
                      title: Text(
                        _dummyTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        _dummySubTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call_rounded,
                      color: Colors.white,
                    ),
                    splashColor: Theme.of(context).primaryColor,
                    splashRadius: 20.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.white,
                    ),
                    splashColor: Theme.of(context).primaryColor,
                    splashRadius: 20.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                child: Text(
                  "About",
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    _dummyDescription,
                    style: TextStyle(
                        fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("Book Now",))),
              Padding(padding: const EdgeInsets.only(top: 10.0)),
              ListTile(
                title: Text(
                  "Recommendation",
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
            ],
          ),
        ),
      ),
    );
  }
}
