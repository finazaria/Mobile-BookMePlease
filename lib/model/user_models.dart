// import 'dart:convert';
// import 'dart:html';
// import 'package:http/http.dart' as http;

// class User {
//   String user;
//   String name;
//   String member_since;
//   String interest;
//   String profile_pic;

//   User({
//     this.user,
//     this.name,
//     this.member_since,
//     this.interest,
//     this.profile_pic,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       user: json['user'],
//       name: json['name'],
//       member_since: json['member_since'],
//       interest: json['interest'],
//       profile_pic: json['profile_pic']
//     );
//   }

//   // static Future<User> connectToAPI(String user) async {
//   //   String apiURL = "https://bookmeplease.herokuapp.com/userJson/" + user;
  
//   //   var apiResult = await http.get(Uri.parse(apiURL));
//   //   var jsonObject = json.decode(apiResult.body);
//   //   var userData = (jsonObject as Map<String, dynamic>)['data'];

//   //   return User.fromJson(userData);
//   // }
// }