import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
  ),);
}

class HomePage extends StatefulWidget{
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                "assets/bg.jpeg", 
                fit: BoxFit.contain,
                ),
                SizedBox(
                  height:20
                ),
                Center(
                  child: Text(
                   myText,
                    style: TextStyle(
                      fontSize: 25, 
                      fontWeight : FontWeight.bold
                    ),
                  ),
                ),
                 SizedBox(
                  height:20
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Something here",
                      labelText: "Name"
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text("Hi, i am a drawer", 
            //   style: TextStyle(
            //     color:Colors.white
            //   ),),
            //   decoration: BoxDecoration(
            //     color:Colors.purpleAccent
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Aayush agrawal"), 
              accountEmail: Text("aayush@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1459356979461-dae1b8dcb702?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80"),
                // child: Image.network(
                //   "https://images.unsplash.com/photo-1459356979461-dae1b8dcb702?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80",
                //   ),
              )
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
             ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("aayush@gmail.com"),
              trailing: Icon(Icons.send),
            ),
             ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              subtitle: Text("help@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText = _nameController.text;
          setState(() {});
        },
      child: Icon(Icons.refresh),
      mini: true,
      ),
    );
  }
}