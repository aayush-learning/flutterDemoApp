import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
                  child: Container(
            width: 300,
            height: 400,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(8) ,
                      width: 100,
                      height: 100,
                      color: Colors.green,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8) ,
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8) ,
                      width: 100,
                      height: 100,
                      color: Colors.red,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}