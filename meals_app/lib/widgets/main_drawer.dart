import 'package:flutter/material.dart';
import 'package:meals_app/screen/filter_screen.dart';
import 'package:meals_app/screen/tabs_screen.dart';

class MainDrawer extends StatefulWidget {
  // const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
    });
  }

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title:
          //color: Colors.black,
          Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      onTap: tapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text(
            'Cooking Up!',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // buildListTile('Meals', Icons.restaurant,
        //  () {
        //   //  Navigator.of(context).pushNamed('/');
        //   // Navigator.push(
        //   //   context,
        //   //   MaterialPageRoute(builder: (context) => TabsScreen()),
        //   // );
        // }),
        // buildListTile('Filters', Icons.settings, () {
        //   //Navigator.of(context).pushNamed(FilterScreen.routName);
        // }),
        ListTile(
          leading: Icon(
            (Icons.restaurant),
            size: 26,
          ),
          title:
              //color: Colors.black,
              Text(
            'drware',
            style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TabsScreen([])),
            );
          },
        ),
        ListTile(
          leading: Icon(
            (Icons.settings),
            size: 26,
          ),
          title:
              //color: Colors.black,
              Text(
            'Filters',
            style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FilterScreen(
                        currentFilters: _filters,
                        saveFilters: _setFilters,
                      )),
            );
          },
        ),
      ]),
    );
  }
}
