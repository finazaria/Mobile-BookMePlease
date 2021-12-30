import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'BookMePlease',
      style: TextStyle(color: Colors.white)),
    leading: BackButton(),
    elevation: 0,
  );
}