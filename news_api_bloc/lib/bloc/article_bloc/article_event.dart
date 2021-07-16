import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:news_api_bloc/data/model/api_result_model.dart';

abstract class ArticleEvent extends Equatable {}

class FetchArticleEvent extends ArticleEvent {
  @override
  List<Object> get props => [Articles];
}
