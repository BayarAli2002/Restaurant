import 'package:flutter/material.dart';
import 'package:mealapp/dummy.dart';

class MealDetailScreen extends StatelessWidget {
  final Function _togglefavorite;
  final Function isFavoriteMeal;

  static const mealroute = "meal_route";

  MealDetailScreen(this._togglefavorite,this.isFavoriteMeal);

  @override
  Widget Ingredients(BuildContext ctx, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: Theme.of(ctx).textTheme.bodyLarge,
      ),
    );
  }

  Widget MealDetails(Widget child) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 320,
      //Here I have put ListView inside the a Container because it takes the whole space
      child: child,
    );
  }

  Widget build(BuildContext context) {
    final MealId = ModalRoute.of(context)?.settings.arguments as String;
    final SelectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == MealId);
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          SelectedMeal.title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                SelectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Ingredients(context, "Ingredients"),
            MealDetails(
              ListView.builder(
                itemBuilder: (_, index) => Card(
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      SelectedMeal.ingredients[index],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                itemCount: SelectedMeal.ingredients.length,
              ),
            ),
            Ingredients(context, "Steps"),
            MealDetails(
              ListView.builder(
                itemBuilder: (_, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        child: Text(
                          "#${index + 1}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      title: Text(
                        SelectedMeal.steps[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: '',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.orangeAccent,
                      thickness: 2,
                    ),
                  ],
                ),
                itemCount: SelectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed:()=>_togglefavorite(MealId),
        child: Icon(
          isFavoriteMeal(MealId)? Icons.star:Icons.star_border,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
