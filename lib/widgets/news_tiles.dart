// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsTiles extends StatelessWidget {
  const NewsTiles({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0, left: 8.0, right: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.network(
                articleModel.image ?? 'https://via.placeholder.com/400x200?text=No+Image',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Text('Image not available'),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8.0),
            child: Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8.0, bottom: 20.0),
            child: Text(
              articleModel.subtitle ?? 'No description available',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8.0, bottom: 12.0),
            child: Text(
              'Source: ${articleModel.source.name}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.grey[500]),
            ),
          ),
        ],
      ),
    );
  }
}
