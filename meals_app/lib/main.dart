import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/screen/categories_screen.dart';
import 'package:meals_app/screen/category_meals_screen.dart';
import 'package:meals_app/screen/filter_screen.dart';
import 'package:meals_app/screen/meal_detail_screen.dart';
import 'package:meals_app/screen/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['glutean'] == !meal.isGlutenFree) {
          return false;
        }
        ;
        if (_filters['lactoseFree'] == !meal.isLactoseFree) {
          return false;
        }
        ;
        if (_filters['vegan'] == !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] == !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggelFavorite(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DeliMeals",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        //canvasColor: Color.fromARGB(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromARGB(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromARGB(20, 51, 51, 1),
              ),
              title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold),
            ),
      ),
      //home: CategoriesScreen(),
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(
              availableMeals: _availableMeals,
            ),
        MealDetailScreen.routName: (ctx) =>
            MealDetailScreen(_toggelFavorite, _isMealFavorite),
        //FilterScreen.routName: (ctx) => FilterScreen(saveFilters: _setFilters),
      },
      onGenerateRoute: (setting) {
        print(setting.arguments);
        // return MaterialPageRoute(
        //   builder: (ctx) => CategoriesScreen(),
        // );
      },
      onUnknownRoute: (setting) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
