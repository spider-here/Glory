import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class notifications extends StatelessWidget {
  String? _profileImageURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 1.0,
        centerTitle: true,
        title: InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "All Activity",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  )
                ])),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/dm.png', width: 20.0, height: 20.0,),
              )
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).backgroundColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {},
                        minVerticalPadding: 15.0,
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          height: 40.0,
                          width: 40.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/sample_image.png'),
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(width: 0.5, color: Colors.grey),
                          ),
                        ),
                        title: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Notif. Title",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ": ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: "This is the notification content. ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                )),
                            TextSpan(
                                text: "6m",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                )),
                          ]),
                          textAlign: TextAlign.left,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                          size: 16.0,
                        ),
                      );
                    },
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ]),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Suggested accounts",
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    Padding(padding: const EdgeInsets.only(right: 5.0)),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.info_outline,
                          size: 15.0,
                          color: Colors.grey,
                        ))
                  ]),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    minVerticalPadding: 15.0,
                    contentPadding: EdgeInsets.zero,
                    leading: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 20.0,
                          child: ClipOval(
                            child: _profileImageURL != null
                                ? Image.network(_profileImageURL!)
                                : Image.asset(
                                    'assets/images/sample_image.png',
                                  ),
                          )),
                    ),
                    title: InkWell(
                      onTap: () {},
                      child: Text(
                        "Username",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("From your contacts",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        )),
                    trailing: SizedBox(
                      width: 100.0,
                      child: Row(
                        children: [
                          SizedBox(
                              height: 30.0,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Follow",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      )))),
                          Spacer(),
                          InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 20.0,
                              )),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}