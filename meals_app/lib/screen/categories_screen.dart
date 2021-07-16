import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('CategoriesScreen');
    return //Scaffold(
        // appBar: AppBar(
        //   title: const Text('DeliMeal'),
        // ),
        GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5 / 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
