// https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=86f5d25d103441ddabfa86cb61b26130
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:newsapp/Model/newArt.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArt> fetchNews() async {
    final random = Random();
    var sourceID = sourcesId[random.nextInt(sourcesId.length)];
    print(sourceID);
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=86f5d25d103441ddabfa86cb61b26130"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    final newrandom = Random();
    var articleID = articles[newrandom.nextInt(articles.length)];
    print(articles);
    return NewsArt.fromAPItoApp(articleID);
  }
}
