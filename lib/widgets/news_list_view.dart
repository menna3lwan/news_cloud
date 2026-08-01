import 'package:dio/dio.dart';
import 'package:news_cloud/services/news_service.dart';
import 'package:news_cloud/models/article_model.dart';
import './news_tiles.dart';

import 'package:flutter/material.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articlesList = [];

  @override
  void initState() async {
    super.initState();
    await getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    NewsService newsService = NewsService(Dio());
    articlesList = await newsService.getNew();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: NewsTiles(articleModel: articlesList[index]),
              );
            },
            childCount: articlesList.length,
          ),
        ),
      ],
    );
  }
}
