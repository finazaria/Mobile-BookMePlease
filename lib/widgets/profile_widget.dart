import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/main.dart';
import 'package:flutter_complete_guide/widgets/edit_profile_picture.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key key,
    this.imagePath,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      // Stack => to overlap multiple wigdet on top of each other
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: ElevatedButton(
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(8),
                primary: bmpYellow,     // Button color
                onPrimary: Colors.grey, // Splash color
              ),
              onPressed : () {
                Navigator.pushNamed(
                  context, '/edit-profile-picture');
              },
            )
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: onClicked),
          ),
      ),
    );
  }

  // Widget buildEditIcon(BuildContext context, Color color) => buildCircle(
  //   color: Color.fromRGBO(255, 248, 229, 1),
  //   all: 3,
  //   child: buildCircle(
  //     color: bmpYellow,
  //     all: 8,
  //     child : Icon(
  //       Icons.edit,
  //       color: Colors.white,
  //       size: 20,
  //     ),
  //     onClicked: () {
  //       Navigator.push(
  //         context, 
  //         MaterialPageRoute(builder: (context) => const EditProfilePicture()),);
  //     }
  //   ),
  // );

  Widget buildCircle({
    Widget child,
    double all,
    Color color, Null Function() onClicked,
  }) =>
    ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,
      ),
    );
}