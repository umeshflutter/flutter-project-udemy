import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/screen/categories_screen.dart';
import 'package:meals_app/screen/favorites_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key? key}) : super(key: key);
  List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // final List<Map<String, Object>> _pages = [
  //   {
  //     'pages': CategoriesScreen(),
  //     'title': 'Categories',
  //   },
  //   {
  //     'pages': FavoritesScreen(),
  //     'title': 'Favorites',
  //   },
  // ];
  late List<Widget> _pages;
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      CategoriesScreen(),
      FavoritesScreen(widget.favoriteMeals),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Meals'),
        //title: Text(_pages[_selectedPageIndex]['title'].toString()),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
