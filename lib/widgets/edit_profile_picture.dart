import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/main.dart';
import 'package:flutter_complete_guide/widgets/appbar_widget.dart';

class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({Key key}) : super(key: key);

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: ElevatedButton(
          child: const Text('Update',
            style: TextStyle(color: Colors.white)
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.grey
          ),
          onPressed: () {
            Navigator.pop(context);
          }, 
        ),
      ),
    );
  }

}