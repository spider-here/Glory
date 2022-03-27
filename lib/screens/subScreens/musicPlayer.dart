import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seekbar/seekbar.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class musicPlayer extends StatelessWidget {
  final String _dummySongName = "Song Name";
  final String _dummyArtistName = "Artist Name";
  final String _dummyTotalDuration = "5:00";
  final String _dummyCompletedDuration = "0:00";

  final List<String> _dummyAlbum = [
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80",
    "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80),"
        "https://images.unsplash.com/photo-1545987796-200677ee1011?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV0d29ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  ];

  final SolidController _bottomSheetController = SolidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).backgroundColor,
            statusBarBrightness: MediaQuery.of(context).platformBrightness == Brightness.light? Brightness.light:Brightness.dark,
            statusBarIconBrightness: MediaQuery.of(context).platformBrightness == Brightness.dark? Brightness.light:Brightness.dark,),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
              color: Theme.of(context).textTheme.bodyText1?.color
          ),
          title: const AutoSizeText("Listening", textAlign: TextAlign.center, maxLines: 1,),
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18.0),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 6,
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 100.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.7,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: const DecorationImage(
                              image: NetworkImage(
                                "https://images.pexels.com/photos/853151/pexels-photo-853151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: SolidBottomSheet(
                      controller: _bottomSheetController,
                      // elevation: 100.0,
                      maxHeight: MediaQuery.of(context).size.height/2,
                      headerBar: Card(
                        margin: const EdgeInsets.all(0.0),
                        color: MediaQuery.of(context).platformBrightness == Brightness.light? Colors.grey.shade100 : Colors.grey.shade900,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 50.0,
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 3.0,
                                ),
                              ),
                              ListTile(
                                dense: true,
                                  title: Text(
                                    _dummySongName,
                                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    _dummyArtistName,
                                    style:
                                    Theme.of(context).textTheme.bodyText1?.copyWith( fontSize: 12.0),
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(
                                      Icons.favorite_outline,
                                      color: Theme.of(context).textTheme.bodyText1?.color
                                    ),
                                    splashColor: Theme.of(context).primaryColor,
                                    splashRadius: 20.0,
                                    onPressed: () {},
                                  )),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 30.0,
                                  right: 30.0,
                                ),
                                child: Column(
                                  children: [
                                    SeekBar(
                                      progressColor: Theme.of(context).primaryColor,
                                      thumbColor: Theme.of(context).primaryColor,
                                      barColor: Theme.of(context).textTheme.bodyText2?.color,
                                      progressWidth: 3.2,
                                    ),
                                    Row(children: [
                                      Text(
                                        _dummyCompletedDuration,
                                        style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14.0),
                                      ),
                                      const Spacer(),
                                      Text(
                                        _dummyTotalDuration,
                                        style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14.0),
                                      ),
                                    ]),
                                    const Padding(padding: EdgeInsets.only(top: 5.0)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          child: Icon(
                                            Icons.skip_previous_rounded,
                                            color: Theme.of(context).textTheme.bodyText1?.color,
                                            size: 30.0,
                                          ),
                                          onTap: () {},
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.0)),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50.0),
                                              color: Theme.of(context)
                                                  .primaryColor
                                                  .withOpacity(0.5)),
                                          padding: const EdgeInsets.all(10.0),
                                          height: 80.0,
                                          width: 80.0,
                                          child: FloatingActionButton(
                                            onPressed: () {},
                                            child: const Icon(
                                              Icons.play_arrow_rounded,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.0)),
                                        InkWell(
                                          child: Icon(
                                            Icons.skip_next_rounded,
                                            color: Theme.of(context).textTheme.bodyText1?.color,
                                            size: 30.0,
                                          ),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                    const Padding(padding: EdgeInsets.only(bottom: 10.0),
                                      )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      body: Container(
                          color: MediaQuery.of(context).platformBrightness == Brightness.light? Colors.grey.shade100 : Colors.grey.shade900,
                          child:
                              ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                physics: const BouncingScrollPhysics(),
                                padding: const EdgeInsets.only(bottom: 50.0),
                                itemCount: _dummyAlbum.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                        dense: true,
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.grey.shade800,
                                          foregroundImage:
                                              NetworkImage(_dummyAlbum[index]),
                                        ),
                                        title: Text(
                                          _dummySongName,
                                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        subtitle: Text(_dummyArtistName,
                                            style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 12.0),
                                            overflow: TextOverflow.ellipsis),
                                        trailing: Text(_dummyTotalDuration, style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 12.0),),
                                  );
                                },
                              ),
                        ),
                      )),
              ],
            ),
          ),
        ));
  }
}
