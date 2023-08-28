import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/view/general_news_view.dart';
import '../models/article_model.dart';

//The logic of how to build the general news widget and build it
class BuildGeneralNews extends StatefulWidget {
  const BuildGeneralNews({super.key});
  @override
  State<BuildGeneralNews> createState() => _BuildGeneralNewsState();
}

class _BuildGeneralNewsState extends State<BuildGeneralNews> {
  List<ArticleModel> articles = [];
  //There's no data to review
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    //invoking the method before biulding
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews();
    //end loading after gettin the data
    isLoading = false;
    //to change the widgit after get the information form getNews
    setState(() {});
  }

//view cercular loading when the data aren't appear
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
                child: CircularProgressIndicator(
              color: Colors.orange,
            )))
        : articles.isNotEmpty
            ? GeneralNews(articles: articles)
            : const SliverFillRemaining(
                child: Center(child: Text('Ops, There was an error ')));
  }
}
