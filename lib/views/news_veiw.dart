import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/news_list_view.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.00,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontSize: 20,

                fontWeight: FontWeight.w500,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
      body: const NewsListView(),
    );
  }
}
