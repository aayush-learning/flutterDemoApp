import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:testing_app_flutter/home_page.dart';
import 'package:testing_app_flutter/login_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Awesome App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ),);
}


