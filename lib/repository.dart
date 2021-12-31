import 'dart:convert';

import 'package:http/http.dart' as http;
import 'comments_model.dart';
import './models/meal.dart';

class RepoUhuy {
  // final _baseUrl = 'https://bookmeplease.herokuapp.com/showcomments/';
  String bookid;

  Future getData(String bookid) async {
    try {
      String apiUrl =
          "https://bookmeplease.herokuapp.com/showcomments/?book=" + bookid;
      final response = await http.get(Uri.parse(apiUrl),
          headers: {"Access-Control-Allow-Origin": "*"});

      if (response.statusCode == 200) {
        print("masuk 200");
        Iterable it = jsonDecode(response.body);
        List<Comments> comments = it.map((e) => Comments.fromJson(e)).toList();
        // for (int i = 0; i < 3; i++) {
        //   print(comments[i].name);
        //   print(comments[i].book);
        //   print(comments[i].comment);
        //   print("----------------");
        // }
        return comments;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future getDataBook() async {
    try {
      String apiUrl = "https://bookmeplease.herokuapp.com/bookJson/";
      final response = await http.get(Uri.parse(apiUrl),
          headers: {"Access-Control-Allow-Origin": "*"});
      if (response.statusCode == 200) {
        print("masuk 200");
        Iterable it = jsonDecode(response.body);
        List<Book> _availableMeals = it.map((e) => Book.fromJson(e)).toList();
        // for (int i = 0; i < _availableMeals.length; i++) {
        //   print(_availableMeals[i].id);
        //   print(_availableMeals[i].Name);
        //   print(_availableMeals[i].Author);
        //   print(_availableMeals[i].Genre);
        //   print("----------------");
        // }
        return _availableMeals;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
