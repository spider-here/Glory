import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class storyMusicProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        actions: [
          IconButton(
              onPressed: () {},
              splashColor: Theme.of(context).primaryColor,
              splashRadius: 20.0,
              icon: const Icon(
                Icons.share,
                color: Colors.white,
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
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width/3, height: MediaQuery.of(context).size.width/3,
                          child: Stack(
                            children: [
                              Align(
                                alignment: FractionalOffset.center,
                                child: Image.asset('assets/images/sample_image.png',),
                              ),
                              const Align(
                                alignment: FractionalOffset.center,
                                child: Icon(Icons.play_arrow, color: Colors.white, size: 40.0,),
                              ),

                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 10.0)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.white),),
                            const Text("Subtitle", style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                            const Text("1.7M Videos", style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                            const Padding(padding: EdgeInsets.only(top: 10.0)),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_outline, color: Colors.white, size: 18.0,),
                              label: const Text(
                                "Add to Favorites",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                              ),
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all<BorderSide>(
                                      const BorderSide(
                                          width: 1.0,
                                          color: Colors.grey
                                      )
                                  ),
                                  textStyle: MaterialStateProperty.all<TextStyle>(
                                      const TextStyle(
                                        fontFamily: 'Poppins',
                                      )
                                  ),
                                  foregroundColor: MaterialStateProperty.all(Colors.white),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 2.0,
                          crossAxisSpacing: 2.0),
                      itemCount: 20,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index){
                        return Image.asset('assets/images/sample_image.png');
                      }),
                ],
              )),
          Align(
            alignment: FractionalOffset.bottomCenter,
              child: Padding(padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.videocam), label: const Text("Use this sound"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),),)),

        ],
      ));}}