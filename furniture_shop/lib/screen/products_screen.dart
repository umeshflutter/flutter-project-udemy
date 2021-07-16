import 'package:flutter/material.dart';
import 'package:furniture_shop/CommonClass/SliverGridDelegate.dart';
import 'package:furniture_shop/screen/detail_screen.dart';
import 'package:furniture_shop/screen/home_screen.dart';

class ProductsScreen extends StatefulWidget {
  ProductsScreen({Key? key}) : super(key: key);

  @override
  ProductsScreenState createState() => ProductsScreenState();
}

class ProductsScreenState extends State<ProductsScreen> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    print('ProductsScreen');

    return Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 5,
                  child: Text(
                    '120 Products',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 2 - 5,
                    padding: EdgeInsets.only(left: 50),
                    child: DropdownButton<String>(
                      focusColor: Colors.black,
                      elevation: 10,
                      hint: Text('Popular',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.black,
                      items: ['One', 'Two', 'Three']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _chosenValue = value!;
                          print(_chosenValue);
                        });
                      },
                      value: _chosenValue,
                    )),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: GridView.builder(
              //itemCount: arrItems.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: 2,
                      height: 180,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    // padding: EdgeInsets.only(bottom: 20),

                    color: Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                height: 180,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailScreen()),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          'assets/image/1.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Amos Chair',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              'the moder take on transation take',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              '\$5000',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(top: height * 0.09, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: width * 0.09,
                                  height: height / 4,
                                  color: Colors.yellow,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.shopping_bag),
                                    // padding: EdgeInsets.only(bottom: 100),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
