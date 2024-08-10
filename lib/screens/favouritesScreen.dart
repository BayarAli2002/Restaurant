
import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/meal_Item.dart';
class FavoritesScreen extends StatefulWidget {

  List<Meal> FavoriteMeals;
  FavoritesScreen(this.FavoriteMeals);
  @override
  State<FavoritesScreen> createState() => _FavouritesscreenState();
}

class _FavouritesscreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    if(widget.FavoriteMeals.isEmpty)
      {
        return Center(
          child: Text("Favoritesscreen"),
        );
      }
    else
      {
        return ListView.builder(
          itemBuilder: (ctx,index){
            return MealItem(
              imageUrl: widget.FavoriteMeals[index].imageUrl,
              title: widget.FavoriteMeals[index].title,
              duration: widget.FavoriteMeals[index].duration,
              complexity: widget.FavoriteMeals[index].complexity,
              affordability: widget.FavoriteMeals[index].affordability,
              id: widget.FavoriteMeals[index].id,

            );
          },
          itemCount: widget.FavoriteMeals.length,
        );
      }


  }
}
