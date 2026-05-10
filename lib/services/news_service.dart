import 'package:dio/dio.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNew() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=d96cf4c46f0e41ddaf4b336c5a0a8adb&category=general');

    var jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          title: article['title'],
          description: article['content'],
          imageUrl: article['urlToImage']);

      articlesList.add(articleModel);
    }

    return articlesList;
  }
}


//with using HTTP
/*
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  Future<List<ArticleModel>> getNew() async {
    http.Response response = await http.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=d96cf4c46f0e41ddaf4b336c5a0a8adb&category=general');

    var jsondata = json.decode(response.body);
    List<dynamic> articles = jsondata['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          title: article['title'],
          description: article['content'],
          imageUrl: article['urlToImage']);

      articlesList.add(articleModel);
    }

    return articlesList;
  }
}


 */


