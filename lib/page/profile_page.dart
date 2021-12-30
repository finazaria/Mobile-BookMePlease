import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_complete_guide/model/user.dart';
import 'package:flutter_complete_guide/widgets/appbar_widget.dart';
import 'package:flutter_complete_guide/widgets/profile_widget.dart';
import 'package:flutter_complete_guide/utils/user_preferences.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
          ),
          // const SizedBox(height: 24),
          buildName(user),
        ],
      )
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 5),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Member since:',
            style: TextStyle(fontWeight: FontWeight.normal)
            ),
          const SizedBox(width: 5),
          Text(
            user.memberSince,
            style: TextStyle(fontWeight: FontWeight.normal)
          )
        ],  
      )

    ],
  );
}