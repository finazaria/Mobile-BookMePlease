import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Book> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Belum ada yang dipilih.'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            // id: favoriteMeals[index].id,
            title: favoriteMeals[index].Name,
            // imageUrl: favoriteMeals[index].Background_Photo,
            duration: favoriteMeals[index].Author,
            // rating: favoriteMeals[index].affordability,
            // complexity: favoriteMeals[index].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
