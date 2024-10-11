// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lecture_3_picture_change/Buttons.dart';
import 'package:lecture_3_picture_change/DicePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
        ),
        body: Center(
          child: Column(
            children: [
              DicePage(),
              myButtons(),
            ],
          ),
        )
      ),

  ));
}

