import 'package:flutter/material.dart';
import 'package:mealapp/dummy.dart';
import '/screens/filters_screen.dart';
import '/screens/tabs_screen.dart';
import 'screens/categories_screen.dart';
import 'models/category.dart';
import 'models/meal.dart';
import 'widgets/category_item.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, dynamic> Filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _AvailableMeals = DUMMY_MEALS;
  List<Meal> _FavoriteMeals = [];
  void _togglefavorite(String mealId){
    final existingIndex =_FavoriteMeals.indexWhere((meal)=> meal.id==mealId);
    setState(() {
      if(existingIndex>=0){
        _FavoriteMeals.removeAt(existingIndex);
      }
      else
      {
        _FavoriteMeals.add(DUMMY_MEALS.firstWhere((meal)=> meal.id==mealId));
      }
    });
  }
  bool isFavoriteMeal(String id){
   return _FavoriteMeals.any((meal)=> meal.id==id);
  }
  void SetFilters(Map<String, bool> FiltersData) {
    setState(() {
      Filters = FiltersData;
      _AvailableMeals = DUMMY_MEALS.where((meal) {
        if (Filters['gluten'] && !meal.isGlutenFree) {
          return false;
        }
        if (Filters['lactose'] && !meal.isLactoseFree) {
          return false;
        }
        if (Filters['vegan'] && !meal.isVegan) {
          return false;
        }
        if (Filters['vegetarian'] && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(_FavoriteMeals),
        displayMealssScreen.routename: (context) =>
            displayMealssScreen(_AvailableMeals),
        MealDetailScreen.mealroute: (context) => MealDetailScreen(_togglefavorite,isFavoriteMeal),
        FiltersScreen.FiltersRoute: (context) =>
            FiltersScreen(SetFilters, Filters),
      },
      title: "My Title",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cardColor: Colors.black,
        primaryColor: Colors.white,
        canvasColor: Color.fromRGBO(255, 100, 200, 1),
        primaryColorDark: Colors.deepOrange,
        primaryColorLight: Colors.pinkAccent,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodySmall: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                fontFamily: "KaushanScript",
              ),
              bodyMedium: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              bodyLarge: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: "Lobster",
              ),
              titleMedium: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              titleSmall: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Lobster",
              ),
            ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Meal App",
        ),
      ),
      body: CategoriesScreen(),
    );
  }
}
