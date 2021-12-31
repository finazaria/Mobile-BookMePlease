import 'dart:convert';
import 'package:http/http.dart' as http;
import 'repository.dart';

class Comments {
  final int book;
  final String name;
  final String created_on;
  final String comment;

  Comments({
    this.book,
    this.name,
    this.created_on,
    this.comment,
  });

  factory Comments.fromJson(Map<String, dynamic> json) {
    return Comments(
      book: json['book'],
      name: json['name'],
      comment: json['comment'],
      created_on: json['created_on'],
    );
  }
}
