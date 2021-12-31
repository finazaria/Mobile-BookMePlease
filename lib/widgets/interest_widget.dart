import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/main.dart';

class InterestWidget extends StatelessWidget {
  final String interest;

  const InterestWidget(String i, {
    Key key, 
    this.interest
    }) : super(key: key);

  // Di loop isi kontenya diluar, ini kita cuma buat sarungnya aja
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: 
        Container(
          width: 122,
          height: 21,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            ),
            child: Text(interest,
                          textAlign: TextAlign.center,
                          style: TextStyle( color: Colors.black, fontSize: 14),
                          
                ),
            ),
    );
  }
  
}