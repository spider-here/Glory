import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class search extends StatelessWidget{
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
        title: TextField(
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            label: Text("Search"),
            labelStyle: TextStyle(
              color: Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white
            )
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              splashColor: Theme.of(context).primaryColor,
              splashRadius: 20.0,
              icon: Icon(Icons.search_outlined, color: Colors.white,)),
        ],
      ),
      body: Container(
        color: Colors.grey.shade800,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

}