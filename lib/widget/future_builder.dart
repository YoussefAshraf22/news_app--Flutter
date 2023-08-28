import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/view/general_news_view.dart';

import '../models/article_model.dart';

class FutureBuilderNews extends StatefulWidget {
  final String category;
  const FutureBuilderNews({super.key, required this.category});

  @override
  State<FutureBuilderNews> createState() => _FutureBuilderNewsState();
}

class _FutureBuilderNewsState extends State<FutureBuilderNews> {
  Future<List<ArticleModel>>? future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //to make only one requist whatever how many build
    future = NewsServices().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        //TO TRIGGER REQUIST
        future: future,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return GeneralNews(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                    child: Text(
                  'Ops, There was an error ',
                  style: TextStyle(fontSize: 20),
                )));
          } else {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                  child: CircularProgressIndicator(color: Colors.orange)),
            );
          }
        }));
  }
}
