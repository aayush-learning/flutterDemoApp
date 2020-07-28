import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing_app_flutter/home_page.dart';
import 'package:testing_app_flutter/login_page.dart';
import 'package:testing_app_flutter/utils/constants.dart';

Future main(List<String> args) async {

  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    title: "Awesome App",
    home: Constants.prefs.getBool("loggedIn") == true ? HomePage()  :LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ),);
}


