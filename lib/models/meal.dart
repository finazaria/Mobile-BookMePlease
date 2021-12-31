import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../repository.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Legendary,
  High,
  Medium,
  Low,
}

class Book {
  final int id;
  final List<String> categories;
  // final String title;
  // final String imageUrl;
  // // final List<String> ingredients;
  // final List<String> steps;
  // final String duration;
  // // final Complexity complexity;
  // final Affordability affordability;
  // final bool isGlutenFree;
  // final bool isLactoseFree;
  // final bool isVegan;
  // final bool isVegetarian;

  final String Name;
  final String Author;
  final String Genre;
  final String Background_Photo;

  Book({
    this.id,
    this.Name,
    this.Author,
    this.Genre,
    this.categories,
    this.Background_Photo,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      Name: json['Name'],
      Author: json['Author'],
      Genre: json['Genre'],
      Background_Photo: json['Background_Photo'],
    );
  }

  // const Meal({
  //   @required this.id,
  //   @required this.categories,
  //   @required this.title,
  //   @required this.imageUrl,
  //   // @required this.ingredients,
  //   @required this.steps,
  //   @required this.duration,
  //   // @required this.complexity,
  //   @required this.affordability,
  //   @required this.isGlutenFree,
  //   @required this.isLactoseFree,
  //   @required this.isVegan,
  //   @required this.isVegetarian,
  // });
}
