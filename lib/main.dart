import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/views/news_veiw.dart';
import 'services/news_service.dart';

void main() {
  NewsService(Dio()).getNew();
  runApp(NewsCloud());
}

final dio = Dio();

class NewsCloud extends StatefulWidget {
  const NewsCloud({super.key});

  @override
  State<NewsCloud> createState() => _NewsCloudState();
}

class _NewsCloudState extends State<NewsCloud> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NewsView());
  }
}
