import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:glory/screens/subScreens/movieDescription.dart';

class movies extends StatelessWidget{

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width/2,
          margin: const EdgeInsets.only(top: 5.0),
          child: CarouselSlider(
            options: CarouselOptions(autoPlay: true,),
            items: _dummyAlbum.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: (){Get.to(()=>movieDescription(), transition: Transition.size);},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: NetworkImage(i),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Recommended for you",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Trending",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "New Release",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Action",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Comedy",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Drama",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Fantasy",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Horror",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Mystery",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Romance",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Thriller",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(top: 10.0)),
        ListTile(
          title: Text(
            "Western",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => movieDescription(), transition: Transition.size);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image:
                            NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              }),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 30.0))
      ],
    );
  }

}