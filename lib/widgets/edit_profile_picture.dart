import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide/main.dart';
import 'package:flutter_complete_guide/widgets/appbar_widget.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePicture extends StatefulWidget {
  @override
  _EditProfilePicture createState() => _EditProfilePicture();
}

class _EditProfilePicture extends State<EditProfilePicture>{
  File image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // Kalo from camera => ImageSource.camera

      if (image==null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    }
    on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      // Kalo from camera => ImageSource.camera

      if (image==null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    }
    on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Spacer(),
            image != null 
              ? Image.file(
                image,
                width: 160,
                height: 160,
                fit: BoxFit.cover) : Icons.people,
            const SizedBox(height: 48),
            buildButton(
              title: 'Pick Gallery',
              icon: Icons.image_outlined,
              onClicked: () => pickImage(),
            ),
            const SizedBox(height: 48),
            buildButton(
              title: 'Pick Camera',
              icon: Icons.camera_alt_outlined,
              onClicked: () => pickCamera(),
            ),
            Spacer(),
          ],
        ),
        // ElevatedButton(
        //   child: const Text('Update',
        //     style: TextStyle(color: Colors.white)
        //   ),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.blue,
        //     onPrimary: Colors.grey
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   }, 
        // ),
      ),
    );
  }

  Widget buildButton({
    String title,
    IconData icon,
    VoidCallback onClicked,
  }) => 
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(56),
        primary: Colors.white,
        onPrimary: Colors.black,
        textStyle: TextStyle(fontSize: 20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 28),
          const SizedBox(width: 16),
          Text(title),
        ]
      ),
      onPressed: onClicked,
  );

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }

}