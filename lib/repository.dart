import 'dart:convert';

import 'package:http/http.dart' as http;
import 'comments_model.dart';

class RepoUhuy {
  final _baseUrl = 'https://bookmeplease.herokuapp.com/showcomments/';
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
}
