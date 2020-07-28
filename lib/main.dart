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
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8) ,
          // color: Colors.teal,
          width: 100,
          height: 100,
          child: Text(
          "I am a box", 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )
          ),
          decoration: BoxDecoration(
            color: Colors.teal,
            gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 5,
                offset: Offset(2.0, 5.0)
              )
            ]
          ),
        )
      ),
    );
  }
}