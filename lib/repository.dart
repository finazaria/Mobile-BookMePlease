// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:flutter_complete_guide/model/user_models.dart';

// Future<http.Response> fetchUser() {
//     return http.get(Uri.parse('https://bookmeplease.herokuapp.com/userJson/'));
//   }

// class Repo {
//   final _baseUrl = "https://bookmeplease.herokuapp.com/userJson/";
//   String user;

//   Future fetchUser(String user) async {
//     final response = await http.get(Uri.parse('https://bookmeplease.herokuapp.com/userJson/'));

//     if (response.statusCode == 200) {
//       // return User.fromJson(jsonDecode(response.body));
//       Iterable it = jsonDecode(response.body);
//       List<User> userData = it.map((e) => User.fromJson(e)).toList();

//       return userData;

//     }
//     else{
//       throw Exception('No user');
//     }
//   }
// }