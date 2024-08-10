import 'package:flutter/material.dart';
import 'package:mealapp/main.dart';
import '/models/meal.dart';
import '/widgets/main_drawer.dart';
import '/screens/categories_screen.dart';
import '/screens/favouritesScreen.dart';

class TabsScreen extends StatefulWidget {

  List<Meal> FavoriteMeals;
  TabsScreen(this.FavoriteMeals);
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int SelectedPageIndex=0;
  void _SelectPage(int value) {
    setState(() {
      SelectedPageIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>> Pages = [
      {
        'page':CategoriesScreen(),
        'title': 'Categories'
      },
      {
        'page':FavoritesScreen(widget.FavoriteMeals),
        'title': 'Your Favorite'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
        title: Text(
          Pages[SelectedPageIndex]['title'],
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Pages[SelectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedPageIndex,
        selectedItemColor: Theme.of(context).cardColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedFontSize: 18,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.shifting,
        onTap: _SelectPage,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColorLight,
            icon: Icon(
              Icons.category,
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColorLight,
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favorites",
          ),
        ],
      ),
      drawer:MainDrawer(),
    );
  }


}
