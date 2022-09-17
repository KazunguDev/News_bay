import 'package:news_feed_flutter/data/repository/news_repository.dart';
import '../../data/model/news.dart';
import '../../data/repository/news_repository.dart';

final _repository = NewsRepository();

Future<List<News>> getAllArticles() async {
  List<News> articles = [];
  articles.addAll(await _repository.getNextWebArticles() ?? []);
  articles.addAll(await _repository.getAssociatedPressArticles() ?? []);
  return articles;
}