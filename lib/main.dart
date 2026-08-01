import 'package:flutter/material.dart';
import 'package:news_cloud/views/news_veiw.dart';

void main() {
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsView(),
    );
  }
}
