import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import '/screens/meal_detail_screen.dart';
class MealItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  const MealItem({
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.id,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
     MealDetailScreen.mealroute,
      arguments: id,
    ).then((result) {
      // if(result!=null)
      //   {
      //     RemoveItem(result);
      //   }
    });
  }

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return "Simple";
      case Complexity.Medium:
        return "Medium";
      case Complexity.Hard:
        return "Hard";
      default:
        return "Unknown";
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return "Cheap";
      case Affordability.Luxurious:
        return "Normal";
      case Affordability.Pricey:
        return "Pricey";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.pinkAccent,
      onTap: ()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                // This Widget to control the image more easily
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    width: 300,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(18),
              width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time_outlined,
                          color: Colors.pinkAccent,
                          weight: 60,
                        ),
                        SizedBox(width: 6),
                        Text("${duration} min",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.pinkAccent,
                        ),
                        SizedBox(width: 6),
                        Text(complexityText,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money_sharp,
                          color: Colors.pinkAccent,
                        ),
                        Text(affordabilityText,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),

            ),
          ],
        ),
      ),
    );
  }
}
