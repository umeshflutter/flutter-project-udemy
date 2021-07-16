import 'package:equatable/equatable.dart';

class NewsDetail extends Equatable {
  final String title;
  final String description;
  final String url;
  NewsDetail(
      {required this.title, required this.url, required this.description});

  factory NewsDetail.fromJson(Map<String, dynamic> json) {
    return NewsDetail(
      title: json['title'].toString(),
      description: json['description'].toString(),
      url: json['url'].toString(),
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [title, description, url];
}
