import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  //separate between cards
  final List<CategoryModel> categories = [
    CategoryModel(imageUrl: 'assets/business.avif', name: 'Business'),
    CategoryModel(imageUrl: 'assets/entertainment.avif', name: 'Entertainment'),
    CategoryModel(imageUrl: 'assets/health.avif', name: 'Health'),
    CategoryModel(imageUrl: 'assets/science.avif', name: 'Science'),
    CategoryModel(imageUrl: 'assets/sports.avif', name: 'Sports'),
    CategoryModel(imageUrl: 'assets/technology.jpeg', name: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 6.0, left: 8.0),
            child: CategoryCard(
              categoryName: category.name,
              imageUrl: category.imageUrl,
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
