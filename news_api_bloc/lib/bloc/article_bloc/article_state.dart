import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_bloc.dart';
import 'package:news_api_bloc/data/model/api_result_model.dart';

abstract class ArticleState extends Equatable {}

class ArticleInitialState extends ArticleState {
  @override
  List<Object> get props => [];
}

class ArticleLoadingState extends ArticleState {
  @override
  List<Object> get props => [];
}

@immutable
class ArticleLoadedState extends ArticleState {
  @override
  List<Articles> articles;
  ArticleLoadedState(this.articles);
  List<Object?> get props => [articles];
}

class ArticleErrorState extends ArticleState {
  String message;

  ArticleErrorState(this.message);
  @override
  List<Object?> get props => [message];
}
