import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:glory/screens/subScreens/checkout/checkout.dart';

class cart extends StatelessWidget {
  final String _dummyPrice = "54.99";
  final double _dummyRating = 4.0;

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  final List<String> _dummyCategories = ["Books", "Video Games"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        title: const AutoSizeText(
          "Cart",
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
              ),
          splashRadius: 20.0,
          splashColor: Theme.of(context).primaryColor,)
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: double.maxFinite,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  itemCount: _dummyCategories.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                        children: [
                          ListTile(
                            dense: true,
                            title: Text(
                              _dummyCategories[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18.0),
                            ),
                          ),
                          ListView.builder(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              itemCount: _dummyAlbum.length,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: const EdgeInsets.all(8.0),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3.9,
                                            child: Card(
                                              elevation: 4.0,
                                              margin: const EdgeInsets.all(0.0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            _dummyAlbum[index]),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(right: 5.0),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Item Name",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.white),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5.0),
                                              ),
                                              const Text(
                                                "Item Description",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.grey),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5.0),
                                              ),
                                              RatingBarIndicator(
                                                rating: _dummyRating,
                                                unratedColor: Colors.white,
                                                itemBuilder: (context, index) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                itemCount: 5,
                                                itemSize: 15.0,
                                                direction: Axis.horizontal,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5.0),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "\$" + _dummyPrice,
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            right: 5.0),
                                                  ),
                                                  Text(
                                                    "\$" + _dummyPrice,
                                                    style: const TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.white,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ]);
                  }),
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    height: 0.0,
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
                const Spacer(),
                ListTile(
                  dense: true,
                  title: const Text(
                    "Total",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0),
                  ),
                  trailing: Text(
                    "\$$_dummyPrice",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0),
                  ),
                ),
                const Spacer(),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                        onPressed: () {Get.off(()=>checkout(), transition: Transition.rightToLeft);},
                        child: const Text("Proceed to Checkout"))),
                const Spacer(),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

