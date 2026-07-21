import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String categoryName;
  final String imageUrl;
  const CategoryCard({
    required this.categoryName,
    required this.imageUrl,
    super.key,
  });
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(widget.imageUrl),
        ),
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          widget.categoryName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
