import 'package:bloc_demo/logic/cubit/counter_cubit.dart';
import 'package:bloc_demo/presentation/screen/home_screen.dart';
import 'package:bloc_demo/presentation/screen/second_screen.dart';
import 'package:bloc_demo/presentation/screen/settings_screen.dart';
import 'package:bloc_demo/presentation/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final Object? key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: "Home Screen",
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
            title: "Second Screen",
            color: Colors.redAccent,
            // homeScreenKey: Key,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(
            title: "Thirst Screen",
            color: Colors.greenAccent,
          ),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (_) => SettingsScreen(),
        );
      default:
        return null;
    }
  }
}
