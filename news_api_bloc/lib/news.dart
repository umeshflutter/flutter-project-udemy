import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'data/model/api_result_model.dart';
import 'model/news_detail.dart';
import 'news_info.dart';

import 'styles.dart';

abstract class ArticleRepository {
  Future<List<Articles>> getArticles();
}

class NewsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewsScreenState();
  }
}

class _NewsScreenState extends State<NewsScreen> {
  final List<NewsDetail> items = [];

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Latest News",
          style: Styles.navBarTitle,
        )),
        body: ListView.builder(
            itemCount: this.items.length, itemBuilder: _listViewItemBuilder));
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var newsDetail = this.items[index];
    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: _itemThumbnail(newsDetail),
        title: _itemTitle(newsDetail),
        onTap: () {
          _navigationToNewsDetail(context, newsDetail);
        });
  }

  void _navigationToNewsDetail(BuildContext context, NewsDetail newsDetail) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NewsInfo(newsDetail);
    }));
  }

  Widget _itemThumbnail(NewsDetail newsDetail) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: newsDetail.url == null
          ? null
          : Image.network(newsDetail.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(NewsDetail newsDetail) {
    return Text(newsDetail.title, style: Styles.textDefault);
  }
}
