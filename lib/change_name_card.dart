import 'package:flutter/material.dart';
import 'package:testing_app_flutter/bg_image.dart';


class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
                child: Column(
                  children: <Widget>[
                    BgImage(),
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
              );
  }
}