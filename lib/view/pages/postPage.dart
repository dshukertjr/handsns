import 'package:flutter/material.dart';
import 'dart:io';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController textController = TextEditingController();

  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "Post New",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              //save to firestore
            },
            child: Row(
              children: <Widget>[
                Icon(Icons.check),
                Text("Post"),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Tell us something about the photo",
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  // var image = await ImagePicker.pickImage(
                  //   source: ImageSource.gallery,
                  //   maxHeight: 720,
                  //   maxWidth: 720,
                  // );
                  // setState(() {
                  //   _image = image;
                  // });
                },
                icon: Icon(Icons.image),
              ),
            ],
          ),
          _image == null ? Container() : Image.file(_image)
        ],
      ),
    );
  }
}
