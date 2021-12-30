import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Action',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Comedy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Crime',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Drama',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Fantasy',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Historycal',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Horror',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Mystery',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Myth',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Romance',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: '1',
    categories: [
      'c1',
      'c5',
    ],
    title: 'Harry Potter',
    affordability: Affordability.Legendary,
    // complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/03/24/12/19/harry-potter-4077473_960_720.png',
    duration: 'J.K. Rowling',
    // ingredients: [
    //   '4 Tomatoes',
    //   '1 Tablespoon of Olive Oil',
    //   '1 Onion',
    //   '250g Spaghetti',
    //   'Spices',
    //   'Cheese (optional)'
    // ],
    steps: [
      'The war against Voldemort is not going well; even Muggle governments are noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar names. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses.'
    ],
    // isGlutenFree: false,
    // isVegan: true,
    // isVegetarian: true,
    // isLactoseFree: true,
  ),
  Meal(
    id: '2',
    categories: [
      'c4',
    ],
    title: 'Before We Were Yours',
    affordability: Affordability.High,
    // complexity: Complexity.Simple,
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/41VcPtNJyeL._SX326_BO1,204,203,200_.jpg',
    duration: 'Lisa Wingate',
    // ingredients: [
    //   '1 Slice White Bread',
    //   '1 Slice Ham',
    //   '1 Slice Pineapple',
    //   '1-2 Slices of Cheese',
    //   'Butter'
    // ],
    steps: [
      'Memphis, 1939. Twelve-year-old Rill Foss and her four younger siblings live a magical life aboard their family’s Mississippi River shantyboat. But when their father must rush their mother to the hospital one stormy night, Rill is left in charge—until strangers arrive in force. Wrenched from all that is familiar and thrown into a Tennessee Children’s Home Society orphanage, the Foss children are assured that they will soon be returned to their parents—but they quickly realize the dark truth. At the mercy of the facility’s cruel director, Rill fights to keep her sisters and brother together in a world of danger and uncertainty.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: '3',
    categories: [
      'c9',
    ],
    title: 'Percy Jackson',
    affordability: Affordability.Legendary,
    // complexity: Complexity.Simple,
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/51BfYSYSfxL._SX336_BO1,204,203,200_.jpg',
    duration: 'Rick Riordan',
    // ingredients: [
    //   '300g Cattle Hack',
    //   '1 Tomato',
    //   '1 Cucumber',
    //   '1 Onion',
    //   'Ketchup',
    //   '2 Burger Buns'
    // ],
    steps: [
      '''Percy Jackson is a good kid, but he can't seem to focus on his schoolwork or control his temper. \
And lately, being away at boarding school is only getting worse - Percy could have sworn his pre-algebra teacher turned into a monster and tried to kill him. 
When Percy's mom finds out, she knows it's time that he knew the truth about where he came from, and that he go to the one place he'll be safe.
She sends Percy to Camp Half Blood, a summer camp for demigods (on Long Island), where he learns that the father he never knew is Poseidon, God of the Sea.
Soon a mystery unfolds and together with his friends—one a satyr and the other the demigod daughter of Athena - Percy sets out on a quest across the United States to reach the gates of the Underworld (located in a recording studio in Hollywood) and prevent a catastrophic war between the gods.'''
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c8',
    ],
    title: 'Age of Myth',
    affordability: Affordability.Low,
    // complexity: Complexity.Challenging,
    imageUrl: 'https://m.media-amazon.com/images/I/51N8Yy2eTdL.jpg',
    duration: 'Michael J. Sullivan',
    // ingredients: [
    //   '8 Veal Cutlets',
    //   '4 Eggs',
    //   '200g Bread Crumbs',
    //   '100g Flour',
    //   '300ml Butter',
    //   '100g Vegetable Oil',
    //   'Salt',
    //   'Lemon Slices'
    // ],
    steps: [
      ' Since time immemorial, humans have worshipped the gods they call Fhrey, truly a race apart: invincible in battle, masters of magic, and seemingly immortal. But when a god falls to a human blade, the balance of power between humans and those they thought were gods changes forever.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c1',
    ],
    title: 'Primary Threat',
    affordability: Affordability.Medium,
    // complexity: Complexity.Simple,
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/51C0dBfrBwL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
    duration: 'Jack Mars',
    // ingredients: [
    //   'Arugula',
    //   'Lamb\'s Lettuce',
    //   'Parsley',
    //   'Fennel',
    //   '200g Smoked Salmon',
    //   'Mustard',
    //   'Balsamic Vinegar',
    //   'Olive Oil',
    //   'Salt and Pepper'
    // ],
    steps: [
      ''' But when Alter’s best friend, Yakov, becomes the latest victim in a long line of murdered Jewish boys, his dream begins to slip away. While the rest of the city is busy celebrating the World’s Fair,
      Alter is now living a nightmare: possessed by Yakov’s dybbuk, he is plunged into a world of corruption and deceit, and thrown back into the arms of a dangerous boy from his past. A boy who means more to Alter than anyone knows. '''
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
    ],
    title: 'The Last Rose of Shanghai',
    affordability: Affordability.High,
    // complexity: Complexity.Hard,
    imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FLast-Rose-Shanghai-Novel-ebook%2Fdp%2FB08YYY8ZNX&psig=AOvVaw1ibODUPY0kbqRXBWelrv1i&ust=1637301865539000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDk0_WeofQCFQAAAAAdAAAAABAD',
    duration: 'Weina Dai Randel',
    // ingredients: [
    //   '4 Sheets of Gelatine',
    //   '150ml Orange Juice',
    //   '80g Sugar',
    //   '300g Yoghurt',
    //   '200g Cream',
    //   'Orange Peel',
    // ],
    steps: [
      ''' In Japanese-occupied Shanghai, two people from different cultures are drawn together by fate and the freedom of music...
1940. Aiyi Shao is a young heiress and the owner of a formerly popular and glamorous Shanghai nightclub. Ernest Reismann is a penniless Jewish refugee driven out of Germany, an outsider searching for shelter in a city wary of strangers. 
He loses nearly all hope until he crosses paths with Aiyi. When she hires Ernest to play piano at her club, her defiance of custom causes a sensation. His instant fame makes Aiyi's club once again the hottest spot in Shanghai. 
Soon they realize they share more than a passion for jazz—but their differences seem insurmountable, and Aiyi is engaged to another man.
As the war escalates, Aiyi and Ernest find themselves torn apart, and their choices between love and survival grow more desperate. In the face of overwhelming odds, a chain of events is set in motion that will change both their lives forever.
From the electrifying jazz clubs to the impoverished streets of a city under siege, The Last Rose of Shanghai is a timeless, sweeping story of love and redemption. '''
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c4',
      'c10',
    ],
    title: 'Love in the Time of Cholera',
    affordability: Affordability.Legendary,
    // complexity: Complexity.Simple,
    imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FLove-Time-Cholera-Oprahs-Book%2Fdp%2F0307389731&psig=AOvVaw2G-Rqk0SkbjVHoCN8t-B0l&ust=1637302067364000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIim8dSfofQCFQAAAAAdAAAAABAD',
    duration: 'Gabriel García Márquez',
    // ingredients: [
    //   '1 1/2 Cups all-purpose Flour',
    //   '3 1/2 Teaspoons Baking Powder',
    //   '1 Teaspoon Salt',
    //   '1 Tablespoon White Sugar',
    //   '1 1/4 cups Milk',
    //   '1 Egg',
    //   '3 Tablespoons Butter, melted',
    // ],
    steps: [
      ''' In their youth, Florentino Ariza and Fermina Daza fall passionately in love. When Fermina eventually chooses to marry a wealthy, well-born doctor, Florentino is heartbroken, but he is a romantic. As he rises in his business career he whiles away the years in 622 affairs—yet he reserves his heart for Fermina. Her husband dies at last, and Florentino purposefully attends the funeral. 
      Fifty years, nine months, and four days after he first declared his love for Fermina, he will do so again.  '''
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Mind Hunter:',
    affordability: Affordability.Low,
    // complexity: Complexity.Challenging,
    imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FMindhunter-Inside-Elite-Serial-Crime-ebook%2Fdp%2FB000FC0RRY&psig=AOvVaw1SmWowJnVJ-cchS0S4aqzk&ust=1637302251580000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKD6psSgofQCFQAAAAAdAAAAABAD',
    duration: 'John E. Douglas',
    // ingredients: [
    //   '4 Chicken Breasts',
    //   '1 Onion',
    //   '2 Cloves of Garlic',
    //   '1 Piece of Ginger',
    //   '4 Tablespoons Almonds',
    //   '1 Teaspoon Cayenne Pepper',
    //   '500ml Coconut Milk',
    // ],
    steps: [
      'The author recounts some his most gruesome and challenging cases during his twenty-five career with the FBI and its elite Investigative Support Unit, including those of Ed Gein, Charles Manson, and Ted Bundy. Reissue. '
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c2',
    ],
    title: 'Scoop',
    affordability: Affordability.Low,
    // complexity: Complexity.Hard,
    imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffellfromfiction.wordpress.com%2F2015%2F03%2F08%2Fscoop-by-evelyn-waugh-1938%2F&psig=AOvVaw2ZEp8Ej6UL8zBVyQ7J6Sf6&ust=1637302735195000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLCuipOiofQCFQAAAAAdAAAAABAD',
    duration: 'Evelyn Waugh',
    // ingredients: [
    //   '1 Teaspoon melted Butter',
    //   '2 Tablespoons white Sugar',
    //   '2 Ounces 70% dark Chocolate, broken into pieces',
    //   '1 Tablespoon Butter',
    //   '1 Tablespoon all-purpose Flour',
    //   '4 1/3 tablespoons cold Milk',
    //   '1 Pinch Salt',
    //   '1 Pinch Cayenne Pepper',
    //   '1 Large Egg Yolk',
    //   '2 Large Egg Whites',
    //   '1 Pinch Cream of Tartar',
    //   '1 Tablespoon white Sugar',
    // ],
    steps: [
      ''' Lord Copper, newspaper magnate and proprietor of the "Daily Beast", has always prided himself on his intuitive flair for spotting ace reporters. That is not to say he has not made the odd blunder, however, and may in a moment of weakness make another. 
     Acting on a dinner-party tip from Mrs Algernon Smith, he feels convinced that he has hit on just the chap to cover a promising little war in the African Republic of Ishmaelia. One of Evelyn Waugh's most exuberant comedies, "Scoop" is a brilliantly irreverent satire of "Fleet Street" and its hectic pursuit of hot news. '''
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c1',
    ],
    title: 'The Three Musketeers',
    affordability: Affordability.High,
    // complexity: Complexity.Simple,
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/51ewNXKhOzL._SX342_SY445_QL70_ML2_.jpg',
    duration: 'Alexandre Dumas',
    // ingredients: [
    //   'White and Green Asparagus',
    //   '30g Pine Nuts',
    //   '300g Cherry Tomatoes',
    //   'Salad',
    //   'Salt, Pepper and Olive Oil'
    // ],
    steps: [
      ''' This swashbuckling epic of chivalry, honor, and derring-do, set in France during the 1620s, is richly populated with romantic heroes, unattainable heroines, kings, queens, cavaliers, and criminals in a whirl of adventure, espionage, conspiracy, murder, vengeance, love, scandal, and suspense. 
      Dumas transforms minor historical figures into larger- than-life characters: the Comte d’Artagnan, an impetuous young man in pursuit of glory; the beguilingly evil seductress “Milady”; the powerful 
      and devious Cardinal Richelieu; the weak King Louis XIII and his unhappy queen—and, of course, the three musketeers themselves, Athos, Porthos, and Aramis, whose motto “all for one, one for all” has come to epitomize devoted friendship. 
      With a plot that delivers stolen diamonds, masked balls, purloined letters, and, of course, great bouts of swordplay, The Three Musketeers is eternally entertaining. '''
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
