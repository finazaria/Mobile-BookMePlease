import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';
import '../repository.dart';

List<Book> DUMMY_MEALS = [];
RepoUhuy repo = RepoUhuy();

getDummyMeals() {
  return DUMMY_MEALS;
}

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  List<Book> availableMeals = [];

  CategoryMealsScreen(this.availableMeals);
  // CategoryMealsScreen();

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Book> displayedMeals;
  var _loadedInitData = false;

  getData() async {
    DUMMY_MEALS = await repo.getDataBook();
    // print("-------------");
    // print(DUMMY_MEALS);
  }

  getDummyMeals() {
    return DUMMY_MEALS;
  }

  @override
  void initState() {
    getData();
    print("masuk init state");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      widget.availableMeals = DUMMY_MEALS;
      displayedMeals = widget.availableMeals.where((meal) {
        // print(meal.Genre);
        // print(categoryTitle);
        return meal.Genre == categoryTitle;
      }).toList();

      // print(meal.Genre);
      // print(categoryTitle);

      // print(displayedMeals.isEmpty);
      // print("masuk didchangeDependemcies");

      // for (int i = 0; i < displayedMeals.length; i++) {
      //   print(displayedMeals[i].id);
      //   print(displayedMeals[i].Name);
      //   print(displayedMeals[i].Author);
      //   print(displayedMeals[i].Genre);
      //   print("----------------");
      // }
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].Name,
            // imageUrl: DUMMY_MEALS[index].Background_Photo,
            duration: displayedMeals[index].Author,
            rating: displayedMeals[index].Genre,
            // complexity: displayedMeals[index].complexity,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
