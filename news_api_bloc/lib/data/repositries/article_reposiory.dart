// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:news_api_bloc/data/model/api_result_model.dart';
// import 'package:news_api_bloc/res/strings.dart';

// abstract class ArticleRepository {
//   Future<List<Articles>> getArticle();
// }

// class ArticleRepositoryIml implements ArticleRepository {
//   @override
//   Future<List<Articles>> getArticle() async {
//     var response = await http.get(Uri.parse(AppStrings.cricArticleUrl));
//     print(response.body);
//     if (response.statusCode == 200) {
//       print(response.contentLength);

//       var data = jsonDecode(response.body);

//       List<Articles> articles = ApiResultModel.fromJson(data).articles;

//       return articles;
//     } else {
//       throw Exception();
//     }
//   }
// }
