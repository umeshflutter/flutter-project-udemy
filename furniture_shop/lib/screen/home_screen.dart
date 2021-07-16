import 'package:flutter/material.dart';
import 'package:furniture_shop/CommonClass/Constant.dart';
import 'package:furniture_shop/CommonClass/CustomAppBar.dart';
import 'package:furniture_shop/screen/products_screen.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var arrTab = ['Chairs', 'Tables', 'Sofa', 'Bench'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: arrTab.length,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                tabs: getTabBar(),
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.black45,
                labelStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                isScrollable: true,
              ),
              title: Text('Tabs Demo'),
              backgroundColor: Colors.white,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                  ),
                  tooltip: "Menu",
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  tooltip: "Card",
                  onPressed: () {},
                )
              ],
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                tooltip: 'Back',
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          body: TabBarView(
            children: getTabBarViews(),
          ),
        ),
      ),
    );
  }

  getTabBar() {
    final tabs = <Tab>[];
    for (var i = 0; i < arrTab.length; i++) {
      tabs.add(Tab(
        text: arrTab[i],
      ));
    }
    return tabs;
  }

  getTabBarViews() {
    final views = <Widget>[];
    for (var i = 0; i < arrTab.length; i++) {
      views.add(ProductsScreen());
    }
    return views;
  }
}
