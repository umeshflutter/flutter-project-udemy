import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  //const FilterScreen({Key? key}) : super(key: key);
  static const routName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FilterScreen({required this.saveFilters, required this.currentFilters});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  initState() {
    // _glutenFree = widget.currentFilters['gluten'];
    // _lactoseFree = widget.currentFilters['lactose'];
    // _vegetarian = widget.currentFilters['vegetarian'];
    // _vegan = widget.currentFilters['vegan'];
    super.initState();
  }
  /*Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      value: _glutenFree,
      onChanged: updateValue,
      title: Text(title),
      subtitle: Text(description),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    var _setFilters;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              var selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarian,
              };
              _setFilters.saveFilters();
            }, //error
            icon: Icon(Icons.save),
          )
        ],
      ),
      //drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust Your Meal Selection',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              SwitchListTile(
                value: _glutenFree,
                onChanged: (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                },
                title: Text('Gluten-free'),
                subtitle: Text('Only Gluten-Free meals'),
              ),
              SwitchListTile(
                value: _lactoseFree,
                onChanged: (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                },
                title: Text('lactoseFree-free'),
                subtitle: Text('Only lactoseFree meals'),
              ),
              SwitchListTile(
                value: _vegetarian,
                onChanged: (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                },
                title: Text('vegetarian-free'),
                subtitle: Text('Only vegetarian meals'),
              ),
              SwitchListTile(
                value: _vegan,
                onChanged: (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                },
                title: Text('vegan-free'),
                subtitle: Text('Only include vegan meals'),
              )
            ],
          )),
        ],
      ),
    );
  }
}
