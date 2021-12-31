import 'dart:html';

import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './favorites_screen.dart';
import './categories_screen.dart';
import '../models/meal.dart';
import './searchBook.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

// class CustomSearchDelegate extends SearchDelegate {
//   List<Meal> searchBook;

//   List<Widget> buildAction(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           // query ' ' ;
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: const Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResult(BuildContext context) {
//     List<Meal> matchQuery = [];
//     String books;

//     for (var book in searchBook) {
//       books = book.toString();
//       if (books.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(book);
//       }
//     }
//   }

//   @override
//   Widget buildSugesstions(BuildContext context) {
//     List<Meal> matchQuery = [];
//     String books;

//     for (var book in searchBook) {
//       books = book.toString();
//       if (books.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(book);
//       }
//     }
//   }
// }

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Daftar Buku',
      },
      // {
      //   'page': SearchScreen(),
      //   'title': 'Search',
      // },
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Kesukaan Saya',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         showSearch(
        //           context: context,
        //           delegate: CustomSearchDelegate(),
        //         );
        //       },
        //       icon: const Icon(Icons.search))
        // ],
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Daftar Buku'),
          ),
          // BottomNavigationBarItem(
          //   backgroundColor: Theme.of(context).primaryColor,
          //   icon: Icon(Icons.search),
          //   title: Text('Search'),
          // ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Kesukaan Saya'),
          ),
        ],
      ),
    );
  }
}
