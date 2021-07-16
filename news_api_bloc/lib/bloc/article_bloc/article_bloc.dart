import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_event.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_state.dart';
import 'package:news_api_bloc/data/model/api_result_model.dart';
import 'article_repositiory.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository repository;

  ArticleBloc(ArticleState initialState, this.repository) : super(initialState);

  @override
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is FetchArticleEvent) {
      yield ArticleLoadingState();
      try {
        List<Articles> articles = await repository.getArticles();
        yield ArticleLoadedState(articles);
      } catch (e) {
        yield ArticleErrorState(e.toString());
      }
    }
    // throw UnimplementedError();
  }
}
