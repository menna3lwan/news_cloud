import 'package:dio/dio.dart';
import 'package:news_cloud/services/news_service.dart';

import './news_tiles.dart';

import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/categories_list_view.dart';

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
    NewsService newsService = NewsService(Dio());
    articlesList =  await newsService.getNew();
  }

  }


@override
void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
   return SilverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTiles();
        },
        childCount: articlesList.length,
        (context,index){
          return const padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: NewsTiles(),
          );
        }
      ),
    );
  }
}
