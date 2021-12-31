import 'package:flutter_complete_guide/model/user.dart';

class UserPreferences {
  static const myUser = User(
    imagePath:
    'https://upload.wikimedia.org/wikipedia/en/4/42/MacOS_Catalina_Desktop.png',
    name: 'Alfina Azaria',
    email: 'alfinazaria32@gmail.com',
    memberSince: 'Jan 13, 2021',
    interests : [
      'Fiction', 'Non-Fiction', 'Self-Development',
    ],
    // Ini datanya belom connect sama database, cuma vanilla aja

  );
}