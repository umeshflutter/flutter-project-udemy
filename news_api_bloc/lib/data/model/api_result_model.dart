import 'package:flutter/material.dart';

class ApiResultModel {
  late String status;
  late int totalResults;
  late List<Articles> articles;

  ApiResultModel(
      {required this.status,
      required this.totalResults,
      required this.articles});

  ApiResultModel.fromJson(Map<String, dynamic> json) {
    List<Articles> results = <Articles>[];
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    // if (this.articles != null) {
    //   data['articles'] = this.articles.map((v) => v.toJson()).toList();
    // }
    data['articles'] = this.articles.map((v) => v.toJson()).toList();
    return data;
  }
}

class Articles {
  late Source source;
  late Null author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  Articles(
      {required this.source,
      this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  // Articles.fromJson(Map<String, dynamic> json) {
  //   source =
  //       (json['source'] != null ? new Source.fromJson(json['source']) : null)!;
  //   author = json['author'];
  //   title = json['title'];
  //   description = json['description'];
  //   url = json['url'];
  //   urlToImage = json['urlToImage'];
  //   publishedAt = json['publishedAt'];
  //   content = json['content'];
  // }
  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        source: Source.fromJson(json["source"]),
        author: json["author"] == null ? null : json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]).toString(),
        content: json["content"],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.source != null) {
      data['source'] = this.source.toJson();
    }
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }
}

class Source {
  late String id;
  late String name;

  Source({required this.id, required this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
