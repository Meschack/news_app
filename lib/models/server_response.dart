class NewsServerResponse {
  String status;
  int totalResults;
  Map<String, dynamic> articles;

  NewsServerResponse(
    this.status,
    this.totalResults,
    this.articles,
  );
}
