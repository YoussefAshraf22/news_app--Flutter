import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsServices {
  final Dio dio = Dio();
  // final Dio dio;
  NewsServices();

Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=410e057bb529466e8e397deaae976126&category=$category');
      Map<String, dynamic> jsonData = response.data;
      //list of map
      List<dynamic> article = jsonData['articles'];
      //list to save the list of objects
      List<ArticleModel> articleList = [];

      for (var articles in article) {
        //convert list of map to list of objects
        ArticleModel articleModel = ArticleModel(
            title: articles['title'],
            content: articles['description'],
            urlOnTap: articles['url'],
            img: articles['urlToImage']);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
