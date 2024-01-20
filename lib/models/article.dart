import 'package:news_app/models/article_source.dart';

class Article {
  ArticleSource source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  Article(
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      ArticleSource(
        json["source"]["id"],
        json["source"]["name"],
      ),
      json["author"],
      json["title"],
      json["description"],
      json["url"],
      json["urlToImage"],
      DateTime.parse(json["publishedAt"]),
      json["content"],
    );
  }
}
