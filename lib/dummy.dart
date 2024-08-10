import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1'],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
    'https://www.marthastewart.com/thmb/F_ZVpdfo4GVPYi0baFzWbhRuO3U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/broccoli-chickpea-parmesan-4dtebonbapa9tar8empx26-1021_hz-ocms-95581f2a602d4f4fa20bbe8deb4011cd.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heat up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper, and your other spices.',
      'The sauce will be done once the spaghetti is.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2','c9','c5'],
    title: 'Toast Hawaii',
    imageUrl:
    'https://www.tasteofhome.com/wp-content/uploads/0001/01/Modern-Tuna-Casserole_EXPS_THFM19_228112_B09_27_9b.jpg',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for around 10 minutes in the oven at 200°C'
    ],
    duration: 10,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
id: 'm4',
categories: ['c3','c7'],
title: 'German Schnitzel',
imageUrl: 'https://www.thelazydish.com/wp-content/uploads/2022/05/cheap-easy-dinners-for-family-fast-to-make.jpg',
ingredients: [
'4 Pork Chops',
'Flour',
'2 Eggs',
'Breadcrumbs',
'Salt',
'Pepper',
'Oil for frying',
'Lemon (optional)'
],
steps: [
'Pound the pork chops to flatten them.',
'Season with salt and pepper.',
'Dredge in flour, dip in beaten eggs, and coat with breadcrumbs.',
'Fry in hot oil until golden brown.',
'Serve with a lemon wedge if desired.'
],
duration: 30,
complexity: Complexity.Medium,
affordability: Affordability.Pricey,
isGlutenFree: false,
isLactoseFree: true,
isVegan: false,
isVegetarian: false,
),
  Meal(
    id: 'm5',
    categories: ['c4','c5','c1'],
    title: 'Grilled Salmon',
    imageUrl: 'https://www.southernliving.com/thmb/etmK_peM10cIrvQUMmiJJfTecmY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Marry_Me_Chicken_024-f0417a93f64143c7824c1b3815d9825c.jpg',
    ingredients: [
      '4 Salmon Fillets',
      '2 Tablespoons Olive Oil',
      'Lemon Juice',
      'Garlic',
      'Salt',
      'Pepper',
      'Herbs'
    ],
    steps: [
      'Marinate the salmon with olive oil, lemon juice, minced garlic, salt, pepper, and herbs.',
      'Grill the salmon for about 10 minutes, until it flakes easily with a fork.'
    ],
    duration: 15,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm6',
    categories: ['c5','c2'],
    title: 'Chicken Curry',
    imageUrl: 'https://www.foodandwine.com/thmb/Q4a0Mi2B9bCnlXvSDsLv3EEGEIc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Swiss-Army-Stew-FW-Cooks-FT-BLOG1219-707ed80c460540559449343236909907.jpg',
    ingredients: [
      '500g Chicken Breast',
      '1 Onion',
      '2 Garlic Cloves',
      '1 Tablespoon Curry Powder',
      '400ml Coconut Milk',
      'Vegetables (optional)',
      'Rice'
    ],
    steps: [
      'Cut the chicken into pieces.',
      'Sauté the onion and garlic until translucent.',
      'Add the chicken and curry powder and cook until the chicken is browned.',
      'Pour in the coconut milk and add vegetables if desired.',
      'Simmer for about 20 minutes.',
      'Serve with rice.'
    ],
    duration: 40,
    complexity: Complexity.Medium,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c6','c1','c3'],
    title: 'Pancakes',
    imageUrl: 'https://www.wegmans.com/wp-content/uploads/4289007-Winter-EZ-Braised-Beef-Vegetable-Meal.jpg',
    ingredients: [
      '1 Cup Flour',
      '1 Tablespoon Sugar',
      '1 Teaspoon Baking Powder',
      '1/2 Teaspoon Baking Soda',
      '1/2 Teaspoon Salt',
      '1 Cup Buttermilk',
      '1 Egg',
      '2 Tablespoons Melted Butter'
    ],
    steps: [
      'Mix the dry ingredients together.',
      'Add the buttermilk, egg, and melted butter and mix until smooth.',
      'Pour batter onto a hot griddle and cook until bubbles form on the surface, then flip and cook until golden brown.'
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm8',
    categories: ['c7','c6','c4'],
    title: 'Sushi',
    imageUrl: 'https://www.realsimple.com/thmb/FQ6WGi7Qy_pQUm9LRj_Wt0HmavA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1023COO-DIN-Skillet-Chicken-with-Grapes-and-Shallots-cold-weather-meals-34f0b5364e814296af7bb0135a9ae601.jpg',
    ingredients: [
      '2 Cups Sushi Rice',
      '3 Cups Water',
      '1/3 Cup Rice Vinegar',
      '1/4 Cup Sugar',
      '1 Teaspoon Salt',
      'Nori Sheets',
      'Fillings (e.g., fish, avocado, cucumber)'
    ],
    steps: [
      'Cook the sushi rice according to package instructions.',
      'Mix rice vinegar, sugar, and salt, and stir into the cooked rice.',
      'Lay a sheet of nori on a bamboo mat, spread rice evenly over it, and add desired fillings.',
      'Roll tightly and cut into slices.'
    ],
    duration: 60,
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c8','c10'],
    title: 'Ratatouille',
    imageUrl: 'https://www.foodandwine.com/thmb/jTt4ngecgWWMAySFoNiGUMPxoUs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Panko-Breaded-Pork-Chops-FT-RECIPE0822-2000-98a8ee5b1a6c4491843d54afcd360932.jpg',
    ingredients: [
      '1 Eggplant',
      '1 Zucchini',
      '1 Bell Pepper',
      '1 Onion',
      '4 Tomatoes',
      '2 Garlic Cloves',
      'Olive Oil',
      'Herbs'
    ],
    steps: [
      'Cut all the vegetables into slices.',
      'Sauté the onion and garlic in olive oil until translucent.',
      'Add the eggplant and cook for a few minutes until it starts to soften.',
      'Add the bell pepper and zucchini and cook for another few minutes.',
      'Add the tomatoes and herbs, season with salt and pepper, and simmer for about 20 minutes.',
      'Serve hot as a side dish or over rice or pasta.'
    ],
    duration: 45,
    complexity: Complexity.Medium,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm10',
    categories: ['c9','c4','c2','c10'],
    title: 'Vegetable Stir-Fry',
    imageUrl: 'https://realfood.tesco.com/media/images/RFO-1400x919-Filo-fish-pies-with-pea-spiked-mash-3b1120a9-8e50-4e39-8bea-aecae3a42675-0-1400x919.jpg',
    ingredients: [
      '2 Cups Mixed Vegetables (e.g., bell peppers, carrots, broccoli)',
      '2 Tablespoons Soy Sauce',
      '1 Tablespoon Olive Oil',
      '1 Garlic Clove',
      '1 Teaspoon Ginger',
      'Rice or Noodles'
    ],
    steps: [
      'Heat olive oil in a pan.',
      'Add minced garlic and ginger, and sauté until fragrant.',
      'Add the mixed vegetables and stir-fry until they are tender-crisp.',
      'Pour in the soy sauce and cook for another 2 minutes.',
      'Serve over rice or noodles.'
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm11',
    categories: ['c10','c9'],
    title: 'Beef Tacos',
    imageUrl: 'https://images.ctfassets.net/lufu0clouua1/nkY9DqepudwJSaEOlXI2l/1499d6fe72cc427068a65725a9b30b35/Bistro-Meal-_7097.jpg',
    ingredients: [
      '500g Ground Beef',
      '1 Onion',
      '1 Packet Taco Seasoning',
      'Taco Shells',
      'Shredded Lettuce',
      'Diced Tomatoes',
      'Shredded Cheese',
      'Sour Cream (optional)'
    ],
    steps: [
      'Cook the ground beef and chopped onion in a pan until browned.',
      'Add the taco seasoning and follow the packet instructions.',
      'Fill taco shells with the beef mixture and top with lettuce, tomatoes, and cheese.',
      'Add sour cream if desired.'
    ],
    duration: 25,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),

  // Add more Meal objects here...
];
