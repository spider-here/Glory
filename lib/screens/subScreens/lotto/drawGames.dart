import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glory/screens/subScreens/lotto/playDrawings.dart';

import '../search.dart';

class drawGames extends StatelessWidget{

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];
  final List<String> _dummyDrawToken = ["5", "10", "21", "2", "9"];

  final String _dummyJackpotPrice = "20 Million";
  final String _dummyDate = "15/12/2022";
  final String _dummyPowerPlay = "Power Play X 5";
  final String _dummyWonDrawToken = "2";
  final List<int> _dummyDigitalTokenIndexes = [2, 5];

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
        title: InkWell(
            onTap: () {
              Get.to(() => search(), fullscreenDialog: true);
            },
            child: const SizedBox(
                width: double.maxFinite,
                child: AutoSizeText(
                  "Draw Games",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 1,
                ))),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.white,
            ),
            splashColor: Theme.of(context).primaryColor,
            splashRadius: 20.0,)
        ],
      ),
      body: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: _dummyAlbum.length,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: InkWell(
                  onTap: () {Get.to(()=>playDrawings(), transition: Transition.rightToLeft);},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.width / 2.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.shade800),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Visibility(child: Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 4.0,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20.0),
                            width: double.maxFinite,
                            child: const Text("DIGITAL COUPON AVAILABLE", textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0
                            ),),
                          ),
                        ), visible: _dummyDigitalTokenIndexes.contains(index)?true:false,),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          color: Colors.grey,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  _dummyAlbum[index]),
                                              fit: BoxFit.cover)),
                                    )),
                                const Padding(
                                  padding:
                                  EdgeInsets.only(right: 5.0),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        const AutoSizeText(
                                          "Est. Annuitized Jackpot",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                          maxFontSize: 12.0,
                                          minFontSize: 10.0,
                                        ),
                                        AutoSizeText(
                                          "\$" + _dummyJackpotPrice,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                          maxFontSize: 16.0,
                                          minFontSize: 10.0,
                                        ),
                                        AutoSizeText(
                                          "Next Draw: " + _dummyDate,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                          maxLines: 1,
                                          maxFontSize: 12.0,
                                          minFontSize: 10.0,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Divider(
                            height: 0.0,
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            "Results For: " + _dummyDate,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 1,
                                            maxFontSize: 14.0,
                                            minFontSize: 10.0,
                                          ),
                                          Container(
                                            height: 30.0,
                                            margin: const EdgeInsets.only(
                                                top: 5.0),
                                            child: ListView.builder(
                                              itemCount:
                                              _dummyDrawToken.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                  int index) {
                                                return Container(
                                                  height: 30.0,
                                                  width: 30.0,
                                                  margin:
                                                  const EdgeInsets.only(
                                                      right: 5.0),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          100.0),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color:
                                                          Colors.white),
                                                      color: _dummyDrawToken[
                                                      index] ==
                                                          _dummyWonDrawToken
                                                          ? Colors.white
                                                          : Colors
                                                          .transparent),
                                                  child: Center(
                                                    child: Text(
                                                      _dummyDrawToken[index],
                                                      style: TextStyle(
                                                          color: _dummyDrawToken[
                                                          index] ==
                                                              _dummyWonDrawToken
                                                              ? Colors.black
                                                              : Colors.white),
                                                    ),
                                                  ),
                                                );
                                              },
                                              scrollDirection:
                                              Axis.horizontal,
                                              shrinkWrap: true,
                                            ),
                                          )
                                        ],
                                      )),
                                  const Padding(
                                    padding:
                                    EdgeInsets.only(right: 5.0),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            _dummyPowerPlay,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 1,
                                            maxFontSize: 14.0,
                                            minFontSize: 10.0,
                                          ),
                                        ],
                                      )),
                                ],
                              ),)
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }

}