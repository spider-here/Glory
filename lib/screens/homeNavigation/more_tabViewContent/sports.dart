import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class sports extends StatelessWidget{

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];
  final String _dummyHeadline = "This is a dummy headline";

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          height: 40.0,
          margin: const EdgeInsets.only(top: 5.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {},
                    overlayColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                    child: Card(
                      margin: const EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Container(
                        color: Colors.grey.shade800,
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                              "Category $index".toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            )),
                      ),
                    ));
              }),
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
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "QUICK LINKS",
            style: TextStyle(
                color: Colors.white,
                fontSize: 12.0
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2.5,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    "Tournament $index",
                    maxLines: 1,
                    minFontSize: 4.0,
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.white),
                      foregroundColor:
                      MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(50.0)))),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: OutlinedButton(onPressed: (){}, child: Text(_dummyHeadline, style: const TextStyle(fontSize: 10.0),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor.withOpacity(0.2)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    )
                )
            ),),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: const Center(
              child: Text("Live Sports Content Here..", style: TextStyle(color: Colors.white),
              ),
            )
        )
      ],
    );
  }

}