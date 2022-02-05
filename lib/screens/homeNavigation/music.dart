import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class music extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.black,
              ))
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.topCenter,
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/3,
                          child: Stack(
                            children: [
                              Align(
                                alignment: FractionalOffset.center,
                                child: Image.asset('assets/images/sample_image.png',),
                              ),
                              Align(
                                alignment: FractionalOffset.center,
                                child: Icon(Icons.play_arrow, color: Colors.white, size: 40.0,),
                              ),

                            ],
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(right: 10.0)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
                            Text("Subtitle", style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                            Text("1.7M Videos", style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                            Padding(padding: const EdgeInsets.only(top: 10.0)),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_outline, color: Colors.black, size: 18.0,),
                              label: Text(
                                "Add to Favorites",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                              ),
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 2.0,
                            crossAxisSpacing: 2.0),
                        itemCount: 20,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index){
                          return Image.asset('assets/images/sample_image.png');
                        }),
                  ),
                ],
              )),
          Align(
            alignment: FractionalOffset.bottomCenter,
              child: Padding(padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.videocam), label: Text("Use this sound"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                )
              ),),)),

        ],
      ));}}