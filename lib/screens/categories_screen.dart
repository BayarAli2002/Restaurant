import 'package:flutter/material.dart';
import 'package:mealapp/dummy.dart';
import 'package:mealapp/widgets/category_item.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
    padding: EdgeInsets.all(32),
    children:DUMMY_CATEGORIES.map((catval){
    return CategoryItem(catval.id, catval.title, catval.color);
    }).toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200,
    childAspectRatio: 3/2,
    mainAxisSpacing: 15,
    crossAxisSpacing: 15,
    ),
    ),
    );
  }
}
