import './news_tiles.dart';

import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/categories_list_view.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(left: 0.15),
            child: CategoriesListView(),
          );
        } else {
          return const NewsTiles();
        }
      },
    );
  }
}
