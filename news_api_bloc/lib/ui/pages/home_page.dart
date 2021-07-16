import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_bloc.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_event.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_state.dart';
import 'package:news_api_bloc/data/model/api_result_model.dart';
import 'package:news_api_bloc/ui/pages/about_page.dart';
import 'package:news_api_bloc/ui/pages/article_detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ArticleBloc articleBloc;

  @override
  void initState() {
    super.initState();
    articleBloc = BlocProvider.of<ArticleBloc>(context);
    articleBloc.add(FetchArticleEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Material(
            child: Scaffold(
              appBar: AppBar(
                title: Text("Cricket_Home"),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      articleBloc.add(FetchArticleEvent());
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () {
                      navigateToAoutPage(context);
                    },
                  )
                ],
              ),
              body: Container(
                child: BlocListener<ArticleBloc, ArticleState>(
                  listener: (context, state) {
                    if (state is ArticleErrorState) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.message),
                        ),
                      );
                    }
                  },
                  child: BlocBuilder<ArticleBloc, ArticleState>(
                    builder: (context, state) {
                      if (state is ArticleInitialState) {
                        print(ArticleInitialState());
                        return buildLoading();
                      } else if (state is ArticleLoadingState) {
                        print(ArticleLoadingState);
                        return buildLoading();
                      } else if (state is ArticleLoadedState) {
                        print(ArticleLoadedState);
                        return buildArticleList(state.articles);
                      } else if (state is ArticleErrorState) {
                        return buildErrorUi(state.message);
                      }
                      throw Exception();
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildErrorUi(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget buildArticleList(List<Articles> articles) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (ctx, pos) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: ListTile(
              leading: ClipOval(
                child: Hero(
                  tag: articles[pos].urlToImage,
                  child: Image.network(
                    articles[pos].urlToImage,
                    fit: BoxFit.cover,
                    height: 70.0,
                    width: 70.0,
                  ),
                ),
              ),
              title: Text(articles[pos].title),
              subtitle: Text(articles[pos].publishedAt),
            ),
            onTap: () {
              navigateToArticleDetailPage(context, articles[pos]);
            },
          ),
        );
      },
    );
  }

  void navigateToArticleDetailPage(BuildContext context, Articles article) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ArticleDetailPage(
        article,
      );
    }));
  }

  void navigateToAoutPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AboutPage();
    }));
  }
}
