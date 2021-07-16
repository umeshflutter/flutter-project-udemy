/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_bloc.dart';
import 'package:news_api_bloc/bloc/article_bloc/article_state.dart';
import 'package:news_api_bloc/data/repositries/article_reposiory.dart';
import 'package:news_api_bloc/ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BlocProvider(
      //   create: (context) =>
      //       ArticleBloc(ArticleInitialState(), ArticleRepositoryIml()),
      //   child: HomePage(),
      // ),
      home: HomePage(),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'news.dart';

void main() {
  return runApp(MaterialApp(home: NewsScreen()));
}
