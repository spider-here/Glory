import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glory/screens/subScreens/lotto/drawGames.dart';
import 'package:glory/screens/subScreens/lotto/playDrawings.dart';
import 'package:glory/screens/subScreens/lotto/scratchTickets.dart';

class lotto extends StatelessWidget {
  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];
  final List<String> _dummyDrawToken = ["5", "10", "21", "2", "9"];

  final String _dummyCoins = "100";
  final String _dummyTitle = "This is the Title";
  final String _dummyDescription = "This is the Description";
  final String _dummyPrice = "5";
  final String _dummyJackpotPrice = "20 Million";
  final String _dummyDate = "15/12/2022";
  final String _dummyPowerPlay = "Power Play X 5";
  final String _dummyWonDrawToken = "2";

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10.0, bottom: 100.0),
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.monetization_on_rounded,
                color: Colors.yellow.shade700,
              ),
              label: Text(_dummyCoins),
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(width: 1.0, color: Colors.white)),
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                  fontFamily: 'Poppins',
                )),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              )),
        ),
        Container(
          margin:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          width: double.maxFinite,
          height: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(_dummyAlbum[1]), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0)),
          child: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: FractionalOffset.centerLeft,
              child: Text(
                "GET DIGITAL COUPONS!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text(
            "Draw Games",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          trailing: TextButton(
            onPressed: () {Get.to(()=>drawGames(), transition: Transition.size);},
            child: const Text("View All"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          height: MediaQuery.of(context).size.width / 1.8,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _dummyAlbum.length,
              padding: const EdgeInsets.only(left: 10.0),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade800),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                                            MainAxisAlignment.start,
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
                                            MainAxisAlignment.start,
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
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0))
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: (){},
                                            child: const AutoSizeText("Create Play", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), minFontSize: 12.0, maxFontSize: 14.0,))),
                                    const Padding(
                                      padding:
                                      EdgeInsets.all(5.0),
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        thickness: 1.0,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: (){Get.to(()=>playDrawings(), transition: Transition.size);},
                                          child: const AutoSizeText("Play Drawings", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), minFontSize: 12.0, maxFontSize: 14.0,),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ));
              }),
        ),
        ListTile(
          title: const Text(
            "Scratch Tickets",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          trailing: TextButton(
            onPressed: () {Get.to(()=>scratchTickets(), transition: Transition.size);},
            child: const Text("View All"),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: _dummyAlbum.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                            image: NetworkImage(_dummyAlbum[index]),
                            fit: BoxFit.cover)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          child: ListTile(
                            dense: true,
                            contentPadding: const EdgeInsets.all(0.0),
                            title: Text(
                              _dummyTitle,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                            subtitle: Text(
                              _dummyDescription,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                            trailing: Text(
                              "\$" + _dummyPrice,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          )),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
