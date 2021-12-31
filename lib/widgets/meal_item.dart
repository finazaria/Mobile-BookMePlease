import 'package:flutter/material.dart';

import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';
import 'package:flutter_complete_guide/screens/book_comments.dart';
import '../screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final int id;
  final String title;
  final String imageUrl =
      'https://cdn.pixabay.com/photo/2021/01/21/15/54/books-5937716_960_720.jpg';
  final String duration;
  // final Complexity complexity;
  final String rating;

  MealItem({
    @required this.id,
    @required this.title,
    // @required this.imageUrl,
    @required this.rating,
    // @required this.complexity,
    @required this.duration,
  });

  // String get complexityText {
  //   switch (complexity) {
  //     case Complexity.Simple:
  //       return 'Simple';
  //       break;
  //     case Complexity.Challenging:
  //       return 'Challenging';
  //       break;
  //     case Complexity.Hard:
  //       return 'Hard';
  //       break;
  //     default:
  //       return 'Unknown';
  //   }
  // }

  // String get affordabilityText {
  //   switch (rating) {
  //     case Affordability.Legendary:
  //       return 'Legendary';
  //       break;
  //     case Affordability.High:
  //       return 'High';
  //       break;
  //     case Affordability.Medium:
  //       return 'Medium';
  //       break;
  //     case Affordability.Low:
  //       return 'Low';
  //       break;
  //     default:
  //       return 'Unknown';
  //   }
  // }

  // void selectMeal(BuildContext context) {
  //   Navigator.of(context)
  //       .pushNamed(
  //     MealDetailScreen.routeName,
  //     arguments: id,
  //   )
  //       .then((result) {
  //     if (result != null) {
  //       // removeItem(result);
  //     }
  //   });
  // }

  void addComments(BuildContext ctx, String mealId) {
    // Navigator.of(ctx).pushNamed(
    //   CommentMe.routeName,
    //   arguments: {},
    // );
    Navigator.push(
        ctx, MaterialPageRoute(builder: (context) => CommentMe(mealId)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      SizedBox(
                        width: 6,
                      ),
                      Text(duration),
                    ],
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Icon(
                  //       Icons.work,
                  //     ),
                  //     SizedBox(
                  //       width: 6,
                  //     ),
                  //     Text(complexityText),
                  //   ],
                  // ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.book),
                      SizedBox(
                        width: 6,
                      ),
                      Text(rating),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () =>
                              addComments(context, this.id.toString()),
                          icon: const Icon(Icons.comment)),
                      SizedBox(
                        width: 2,
                      ),

                      // Container(
                      //   child: FlatButton(
                      //     // child: Text(
                      //     //   'Comments',
                      //     //   style: TextStyle(fontSize: 12.0),
                      //     // ),
                      //     onPressed: () =>
                      //         addComments(context, this.id.toString()),
                      //   ),
                      // ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     IconButton(
                  //         onPressed: () => toggleFavorite(mealId),
                  //         icon: const Icon(Icons.comment)),
                  //     SizedBox(
                  //       width: 2,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
