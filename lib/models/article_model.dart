class ArticleModel {
  final String title;
  final String? subtitle ;
  final String? image;
  final Source source;
  ArticleModel(
      {required this.title, this.subtitle, this.image, required this.source});
}

class Source {
  final String id;
  final String name;
  Source({required this.id, required this.name});
}