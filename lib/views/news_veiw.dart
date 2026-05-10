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
        title: Row(
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
      body: NewsListView(),

      /*Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  categoryName: 'Business',
                  imageUrl: 'assets/business.avif',
                ),
                CategoryCard(
                  categoryName: 'Entertainment',
                  imageUrl: 'assets/entertainment.avif',
                ),
                CategoryCard(
                  categoryName: 'Health',
                  imageUrl: 'assets/health.avif',
                ),
                CategoryCard(
                  categoryName: 'Science',
                  imageUrl: 'assets/science.avif',
                ),
                CategoryCard(
                  categoryName: 'Sports',
                  imageUrl: 'assets/sports.avif',
                ),
              ],
            ),
          ),
        ],
      )*/
    );
  }
}
