// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../widget/vertical_container.dart';

//widget to get the data from api only
class GeneralNews extends StatelessWidget {
  const GeneralNews({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) =>
          VerticalContainer(article: articles[index]),
    );
  }
}
