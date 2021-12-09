// import 'dart:html';

// import 'package:flutter/material.dart';

// import '../models/meal.dart';
import '../widgets/meal_item.dart';

// class SearchScreen extends StatelessWidget {
//   static const historyLength = 5;
//   List<String> _searchHistory = [];

//   List<String> filteredSearchHistory;
//   String selectedTerms;

//   List<String> filterSearchTerms({
//     @required String filter,
//   }) {
//     if (filter != null && filter.isNotEmpty) {
//       return _searchHistory.reversed
//           .where((term) => term.startsWith(filter))
//           .toList();
//     } else {
//       return _searchHistory.reversed.toList();
//     }
//   }

//   void addSearchTerms(String term) {
//     if (_searchHistory.contains(term)) {
//       putSearchTermFirst(term);
//       return;
//     }
//     _searchHistory.add(term);
//     if (_searchHistory.length > historyLength) {
//       _searchHistory.removeRange(0, _searchHistory.length - historyLength);
//     }

//     filteredSearchHistory = filterSearchTerms(filter: null);
// }

// void deleteSearchTerm(String term){
//   _searchHistory.removeWhere((t) => t == term);
//   filteredSearchHistory = filterSearchTerms(filter: null);
// }

// void putSearchTermFirst(String term){
//   deleteSearchTerm(term);
//   addSearchTerms(term);
// }

// @override
// void initState(){
//   super.initState();
//   filteredSearchHistory = filterSearchTerms(filter: null);
// }