import 'package:flutter/material.dart';
import 'package:testing_app_flutter/bg_image.dart';
import 'package:testing_app_flutter/home_page.dart';
import 'package:testing_app_flutter/utils/constants.dart';


class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"), 
      ),
      body : Stack(
        fit: StackFit.expand,
        children: [
          BgImage(),
          Center(
            child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
              child:Card(
                child: Column(
                  children: <Widget>[
                    Form(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                           children: <Widget>[
                             TextFormField(
                               decoration: InputDecoration(
                                 hintText: "Enter username",
                                 labelText: "Username"
                               ),
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             TextFormField(
                               decoration: InputDecoration(
                                 hintText: "Enter password",
                                 labelText: "Password",
                               ),
                               obscureText: true,
                             ),
                           ]
                          ),
                        )
                      ),
                     SizedBox(
                       height: 20,
                     ),
                    RaisedButton(
                      onPressed: (){
                        // Navigator.push(
                        //   context, MaterialPageRoute(
                        //     builder: (context) => HomePage()
                        //     )
                        //   );
                        Constants.prefs.setBool("loggedIn", true);
                        Navigator.pushReplacementNamed(context, "/home");
                      },
                      child: Text("Sign in"),
                      color: Colors.orange,
                      textColor: Colors.white,
                    )
                  ],
                ),
              )
            ),
      ),
          )
        ]
      )
        ,
    );
  }
}