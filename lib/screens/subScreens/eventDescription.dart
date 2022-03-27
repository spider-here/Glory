import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class eventDescription extends StatelessWidget {
  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  final String _dummyTitle = "This is the Title";
  final String _dummySubTitle = "This is the Subtitle";
  final String _dummyPrice = "96.7";
  final String _dummyDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting"
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
          statusBarColor: Colors.transparent,
          statusBarBrightness: MediaQuery.of(context).platformBrightness == Brightness.light? Brightness.light:Brightness.dark,
          statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark? Brightness.light:Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
            color: Theme.of(context).textTheme.bodyText1?.color
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
              ),
          splashColor: Theme.of(context).primaryColor,
          splashRadius: 20.0,)
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                              image: const DecorationImage(
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
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: _dummySubTitle,
                                  style: const TextStyle(
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
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: ListTile(
                      dense: true,
                      contentPadding: const EdgeInsets.all(0.0),
                      horizontalTitleGap: 5.0,
                      leading: const CircleAvatar(
                        radius: 30.0,
                      ),
                      title: Text(
                        _dummyTitle,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        _dummySubTitle,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call_rounded,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                    splashColor: Theme.of(context).primaryColor,
                    splashRadius: 20.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail_outline_rounded,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                    splashColor: Theme.of(context).primaryColor,
                    splashRadius: 20.0,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                child: Text(
                  "About",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    _dummyDescription,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(onPressed: (){}, child: const Text("Book Now",))),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              ListTile(
                title: Text(
                  "Recommendation",
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
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)
                                  ),
                                ),
                                child: const ListTile(
                                  dense: true,
                                  title: Text("Title", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                                  subtitle: Text("Subtitle",style: TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis),
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
