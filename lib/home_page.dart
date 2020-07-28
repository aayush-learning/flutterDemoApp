import 'package:flutter/material.dart';
import 'package:testing_app_flutter/change_name_card.dart';
import 'package:testing_app_flutter/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HomePage extends StatefulWidget{
  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var url = "http://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    var res = await http.get(url);
    data = jsonDecode(res.body); 
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    var changeNameCard = ChangeNameCard(myText: myText, nameController: _nameController);
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text("Awesome App"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: data != null ? ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"])
                ),
              ) , 
              itemCount: data.length) 
              : 
              Center(
                child: CircularProgressIndicator(
                  
                ),
              ) ,
      ),
      drawer: MyDrawer(),
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