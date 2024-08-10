import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  void selectCategory(BuildContext ctx )
  {
    Navigator.of(ctx).pushNamed(
      displayMealssScreen.routename,
      arguments: {
        'id':id,
        'title':title,
      },

    );
  }
  CategoryItem(this.id,this.title,this.color);
  @override

  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: ()=>selectCategory(context),
      splashColor: Theme.of(context).primaryColorLight,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Text(title,
        style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.2),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
