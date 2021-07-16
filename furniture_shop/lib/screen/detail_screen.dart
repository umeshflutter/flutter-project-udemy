import 'package:flutter/material.dart';
import 'package:furniture_shop/CommonClass/Constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
        body: Container(
          color: Colors.white,
          // height: 900,
          // width: 390,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  height: 310,
                  width: 500,
                  child: Image.asset(
                    'assets/image/1.jpeg',
                    //height: 200,
                    //  width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amos Chair',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 35,
                        child: Text(
                          'the moder take on ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          'transation is most use of Chair in the Morning  Chair in the Morningtransation is most use of Chair in the Morning',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 65, 40, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Treatment ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'H:80cm W:70cm ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Weaved ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 30,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(width: 5),
                                color: Colors.orange,
                                shape: BoxShape.circle),
                          ),
                          Container(
                            height: 40,
                            width: 30,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(width: 5),
                                color: Colors.blue,
                                shape: BoxShape.circle),
                          ),
                          Container(
                            height: 40,
                            width: 30,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(width: 5),
                                color: Colors.pinkAccent,
                                shape: BoxShape.circle),
                          ),
                          Container(
                            height: 40,
                            width: 30,
                            margin: EdgeInsets.fromLTRB(40, 5, 10, 5),
                            child: Icon(Icons.remove),
                            decoration: BoxDecoration(
                                //border: Border.all(width: 5),
                                color: Colors.black12,
                                shape: BoxShape.circle),
                          ),
                          Container(
                            height: 40,
                            width: 30,
                            child: Text(
                              '2',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                          ),
                          Container(
                            height: 40,
                            width: 30,
                            child: Icon(Icons.add),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                //border: Border.all(width: 5),
                                color: Colors.black12,
                                shape: BoxShape.circle),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 15.0,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Add to Bag',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
