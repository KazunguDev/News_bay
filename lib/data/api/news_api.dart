import 'package:dio/dio.dart';
import 'package:news_feed_flutter/data/model/news.dart';
import 'package:news_feed_flutter/data/api/response.dart';
const _baseUrl = "https://newsapi.org/v1/";
const _apiKey = "bdfd25ce2c9b4a9aa53baa63e89a5274";

Future<List<News>?> get(String source) async {
  var url = "${_baseUrl}articles?source=$source&apiKey=$_apiKey";
  try {
    var response = await Dio().get(url);
    print(response.data.toString());
    return NewsResponse.fromJson(response.data).articles;
  } catch (e) {
    print(e);
    return [];
  }
}