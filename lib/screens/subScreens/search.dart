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
        title: Container(
          padding: const EdgeInsets.all(5.0),
          height: 40.0,
          decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: const TextField(
            style: TextStyle(
                color: Colors.white
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search_rounded, color: Colors.grey,),
                hintStyle: TextStyle(color: Colors.grey),
                isDense: true,
              border: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        titleTextStyle: const TextStyle(color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

}