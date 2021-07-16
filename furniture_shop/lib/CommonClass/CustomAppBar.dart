import 'package:flutter/material.dart';

import 'Constant.dart';
//import 'CommonClass/Constant.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final bool isLeftShow;
  final bool isRightShow;

  CustomAppBar(this.title, this.isLeftShow, this.isRightShow)
      : preferredSize = Size.fromHeight(44.0),
        super();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      backgroundColor: AppColor.APP_BAR_BG,
      automaticallyImplyLeading: true,
      actions: <Widget>[
        isRightShow
            ? IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                tooltip: "Menu",
                onPressed: () {},
              )
            : Container(),
      ],
      elevation: 0,
      leading: isLeftShow
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              tooltip: 'Back',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : Container(),
    );
  }
}

/*AppBar(
        title: Text(""),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "search",
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: "menu",
            onPressed: () {},
          ),
        ],
        elevation: 5.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),*/
