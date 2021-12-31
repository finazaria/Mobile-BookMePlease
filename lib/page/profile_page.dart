import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_complete_guide/model/user.dart';
import 'package:flutter_complete_guide/widgets/appbar_widget.dart';
import 'package:flutter_complete_guide/widgets/profile_widget.dart';
import 'package:flutter_complete_guide/widgets/interest_widget.dart';
// import 'package:flutter_complete_guide/widgets/interest_widget.dart';
import 'package:flutter_complete_guide/utils/user_preferences.dart';

// Unused imports
// import 'package:http/http.dart' as http;
// import 'package:flutter_complete_guide/model/user_models.dart';
// import 'dart:convert';
// import '../repository.dart';
// import 'dart:html';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // TUTORIAL SENA
  // Repo repo = Repo();

  // List<User> dataUser = [];

  // String user;

  // getData() async {
  //   dataUser = await repo.fetchUser(user);
  // }

  // @override
  // void initState() {
  //   fetchUser();
  //   super.initState();
  // }

  // Tutorial lain

  // List<User> _user = [];

  // User user = new User();   // get the user first

  // Future fetchUser() async {
  //   String apiURL = "https://bookmeplease.herokuapp.com/userJson/" + user.user;
  
  //   var response = await http.get(Uri.parse(apiURL));

  //   // List<User> userDataList = [];

  //   if (response.statusCode == 200) {
  //     return User.fromJson(json.decode(response.body));
  //     // for (var userDataJson in userJson) {
  //     //   _user.add(User.fromJson(userDataJson));
  //     // }
  //   }
  // }

  // Future<User> futureUser;
  // @override
  // void initState() {
  //   // fetchUser().then((value) {
  //   //   setState(() {
  //   //     _user.addAll(value);
  //   //   });
  //   // });
  //   super.initState();
  //   futureUser = fetchUser();
  // }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
          ),
          // const SizedBox(height: 24),
          buildName(user),

          const SizedBox(height: 24),
          Center(
            child: Text('Interest',
                          style: TextStyle(color: Colors.black, fontSize: 18,
                          fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 23,
            width: 115,
            child: ElevatedButton(
              child: const Text('Add Interest',
                style: TextStyle(color: Colors.white)
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.grey
                
              ),
              onPressed : () {
                  Navigator.pushNamed(
                    context, '/add-interest');
                }, 
        ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   child: 
          //     InterestWidget(
          //       interest: user.interests[0]),
          //     // const SizedBox(height: 24),
          //     // InterestWidget(user.interests[1]),
          //     // // const SizedBox(height: 24),
          //     // InterestWidget(user.interests[2]),
      
          // ),

        ],
      )
    );
  }

  Widget buildName(User user) => Column(
    children: <Widget> [
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