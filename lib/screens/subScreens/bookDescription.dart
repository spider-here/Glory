import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class bookDescription extends StatelessWidget{

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  final String _dummyPrice = "9.99";
  final double _dummyRating = 4.0;
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
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        title: const AutoSizeText(
          "Books",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
          maxLines: 1,
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(
                 width: MediaQuery.of(context).size.width / 1.8,
                 height: MediaQuery.of(context).size.width/1.2,
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
                                width: MediaQuery.of(context).size.width / 2.0,
                                height: MediaQuery.of(context).size.width/1.2,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2.0,
                                        color: Colors.black),
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: NetworkImage(_dummyAlbum[0]),
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
                              width: MediaQuery.of(context).size.width / 2.0,
                              height: MediaQuery.of(context).size.width/1.2,
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
                                      image: NetworkImage(_dummyAlbum[0]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ]
                  ),
               ), Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Book Name",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Author Name",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RatingBarIndicator(
                              rating: _dummyRating,
                              unratedColor: Colors.white,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Theme.of(context).primaryColor,
                              ),
                              itemCount: 5,
                              itemSize: 16.0,
                              direction: Axis.horizontal,
                            ),
                            const Padding(padding: EdgeInsets.only(right: 10.0)),
                            Text("$_dummyRating / 5", style: const TextStyle(
                                fontSize: 14.0, color: Colors.white),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0, bottom: 20.0),
                          child: Text(_dummyDescription, style: const TextStyle(
                              fontSize: 14.0, color: Colors.grey,),),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton.icon(onPressed: (){}, label: const Text("Preview"), icon: const Icon(Icons.read_more_rounded),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  foregroundColor: MaterialStateProperty.all(Colors.black)
                                ),),
                              ),
                              const Padding(padding: EdgeInsets.only(right: 10.0)),
                              Expanded(
                                child: ElevatedButton.icon(onPressed: (){}, label: const Text("Reviews"), icon: const Icon(Icons.comment_outlined,),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      foregroundColor: MaterialStateProperty.all(Colors.black)
                                  ),),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width/1.4,
                            child: ElevatedButton(onPressed: (){}, child: const Text("Add to Cart"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  foregroundColor: MaterialStateProperty.all(Colors.black)
                              ),)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width/1.4,
                            child: ElevatedButton(onPressed: (){}, child: Text("Buy Now for \$$_dummyPrice"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  foregroundColor: MaterialStateProperty.all(Colors.black)
                              ),)),
                        const Padding(padding: EdgeInsets.only(top: 10.0)),
                        ListTile(
                          title: const Text(
                            "Related Books",
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
                                    onTap: () {Get.to(()=>bookDescription());},
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
                      ],
                    ),
                  )
            ],
          ),
        ],
      ),
    );
  }

}