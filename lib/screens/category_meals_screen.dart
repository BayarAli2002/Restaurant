import 'package:flutter/material.dart';
import 'package:mealapp/dummy.dart';
import 'package:mealapp/screens/category_meals_screen.dart';
import '../models/meal.dart';
import '../models/meal.dart';
import '../widgets/meal_Item.dart';
class displayMealssScreen extends StatefulWidget {
  static const routename = "category_meals";
  final List<Meal> _AvailableMeals;

  const displayMealssScreen(this._AvailableMeals);
  @override
  State<displayMealssScreen> createState() => _displayMealssScreenState();
}

class _displayMealssScreenState extends State<displayMealssScreen> {
  dynamic? CategoryTitle;
  List<Meal> displayMeals = [];
  @override
  //This function to load the images faster for preparing
  void didChangeDependencies() {
    final routeModal = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final   CategoryId = routeModal['id'];
    CategoryTitle = routeModal['title'];
    displayMeals = widget._AvailableMeals.where((meal) {
      return meal.categories.contains(CategoryId);
    }).toList();
    super.didChangeDependencies();
  }
  void RemoveMeal(String mealId ){
   setState(() {
     displayMeals.removeWhere((meal){
      return meal.id == mealId;
     });
   });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(CategoryTitle,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
        //Text(displayMeals[index].title)
      body: ListView.builder(
        itemBuilder: (ctx,index){
         return MealItem(
           imageUrl: displayMeals[index].imageUrl,
           title: displayMeals[index].title,
           duration: displayMeals[index].duration,
           complexity: displayMeals[index].complexity,
           affordability: displayMeals[index].affordability,
           id: displayMeals[index].id,
         );
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
