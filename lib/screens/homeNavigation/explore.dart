import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 1.0,
        centerTitle: false,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                )),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.black,
              ))
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: ListTile(
                    dense: true,
                    minVerticalPadding: 15.0,
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 40.0,
                      width: 40.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sample_image.png'),
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(width: 0.5, color: Colors.grey),
                      ),
                    ),
                    title: Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 70.0,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "109.7K",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(right: 2.0)),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                height: MediaQuery.of(context).size.width / 3,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      margin: const EdgeInsets.all(5.0),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0)),
                      child: Container(
                        height:
                            MediaQuery.of(context).size.width /
                                4,
                        width:
                            MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/sample_image.png'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                );
              }),)
              ],
            ),
          );
        },
      ),
    );
  }
}
