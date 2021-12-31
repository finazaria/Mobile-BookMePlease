import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/edit_profile_picture.dart';
import './page/profile_page.dart';
import 'package:flutter_complete_guide/page/add_interest.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

const MaterialColor bmpYellow = const MaterialColor(
  0xFFFFB345,
  const <int, Color>{
    50: const Color(0xFFFF8E5),
    100: const Color(0xFFFFB345),
    200: const Color(0xFFFFB345),
    300: const Color(0xFFFFB345),
    400: const Color(0xFFFFB345),
    500: const Color(0xFFFFB345),
    600: const Color(0xFFFFB345),
    700: const Color(0xFFFFB345),
    800: const Color(0xFFFFB345),
    900: const Color(0xFFFFB345),
  },
);

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),  // home nya Profile Page
      theme: ThemeData(
        primarySwatch: bmpYellow,
        accentColor: Colors.blue,
        canvasColor: Color.fromRGBO(255, 248, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      initialRoute: '/profile-page',
      routes: {'/profile-page' : (context) => ProfilePage(),
      '/edit-profile-picture' : (context) => EditProfilePicture(),
      '/add-interest' : (context) => InterestFormStateful(),
      }

    );
  }
}
