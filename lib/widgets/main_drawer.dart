import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters_screen.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  //Or We can use VoidCallback instead of => Funtion() tap
  Widget DrawerItem(
      BuildContext context, String text, IconData icon, Function() tap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).primaryColorLight,
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
      onTap: tap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.amber,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Text(
              "Cooking up!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DrawerItem(context, "Meal", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          DrawerItem(context, "Filters", Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.FiltersRoute);
          }),
        ],
      ),
    );
  }
}
