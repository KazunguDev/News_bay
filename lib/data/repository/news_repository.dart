import 'package:news_feed_flutter/data/model/news.dart';
import 'package:news_feed_flutter/data/api/news_api.dart' as newsAPIs;
import '../model/news.dart';

class NewsRepository {

  Future<List<News>?> getNextWebArticles() async => newsAPIs.get("the-next-web");

  Future<List<News>?> getAssociatedPressArticles() async => newsAPIs.get("associated-press");
}