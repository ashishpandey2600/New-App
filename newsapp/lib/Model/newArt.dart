class NewsArt {
  String imgUrl;
  String newHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsCnt,
    required this.newsDes,
    required this.newHead,
    required this.newsUrl,
  });
  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
        imgUrl: article["urlToImage"] ?? "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80",
        newsCnt: article["content"] ?? "--",
        newsDes: article["decription"] ?? "--",
        newHead: article["title"]?? "--",
        newsUrl: article["url"]??"https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
