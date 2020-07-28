import 'package:flutter/material.dart';
import 'package:testing_app_flutter/change_name_card.dart';
import 'package:testing_app_flutter/drawer.dart';


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
    var changeNameCard = ChangeNameCard(myText: myText, nameController: _nameController);
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text("Awesome App"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: changeNameCard,
        ),
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