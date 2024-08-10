import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Function SaveFliters;
  static const FiltersRoute = "/f1";
  final Map<String,dynamic> CurrentFilters;
  FiltersScreen(this.SaveFliters, this.CurrentFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _GlutenFree = false;
  bool _LactoseFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;
  @override
  void initState() {
     _GlutenFree = widget.CurrentFilters['gluten'];
     _LactoseFree = widget.CurrentFilters['lactose'];
     _Vegan = widget.CurrentFilters['vegan'];
     _Vegetarian = widget.CurrentFilters['vegetarian'];
    super.initState();
  }

  Widget FiltersItem(String title, String subtitle, bool currentValue,
      Function(bool n) update) {
    return SwitchListTile(
      inactiveThumbColor: Theme.of(context).primaryColorLight,
      inactiveTrackColor: Colors.black12,
      activeTrackColor: Theme.of(context).primaryColorLight,
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      value: currentValue,
      onChanged: update,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final Map<String, bool> seletedfilter = {
                'gluten': _GlutenFree,
                'lactose': _LactoseFree,
                'vegan': _Vegan,
                'vegetarian': _Vegetarian,
              };
              widget.SaveFliters(seletedfilter);
            },
            icon: Icon(
              Icons.save,
              size: 30,
              color: Colors.white70,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
        title: Text(
          "Filters Screen",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Divider(
            color: Theme.of(context).primaryColorLight,
            thickness: 8,
            indent: 0,
            endIndent: 10,
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            thickness: 6,
            indent: 0,
            endIndent: 50,
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            thickness: 4,
            indent: 0,
            endIndent: 90,
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            thickness: 2,
            endIndent: 130,
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            thickness: 1,
            endIndent: 170,
          ),
          Expanded(
            child: ListView(
              children: [
                FiltersItem("Gluten-free", "Only include gluten-free meals",
                    _GlutenFree, (value) {
                  setState(() {
                    _GlutenFree = value;
                  });
                }),
                FiltersItem("Lactose-Free", "Only include lactose-free meals",
                    _LactoseFree, (value) {
                  setState(() {
                    _LactoseFree = value;
                  });
                }),
                FiltersItem("Vegan", "Only include Vegan meals", _Vegan,
                    (value) {
                  setState(() {
                    _Vegan = value;
                  });
                }),
                FiltersItem(
                    "Vegetarian", "Only include Vegetarian meals", _Vegetarian,
                    (value) {
                  setState(() {
                    _Vegetarian = value;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
