import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riyadh_kmcc_new/models/news_model.dart';

final newsRepositoryProvider = Provider(
  (ref) => NewsRepository(),
);

class NewsRepository {
  NewsRepository();

  Future<NewsModel> getNews() async {
    var request =
        http.Request('GET', Uri.parse('http://mytest.igniteway.in/api/news/'));

    http.StreamedResponse response = await request.send();

    var jsonData = await response.stream.bytesToString();
    Map<String, dynamic> decodeData = jsonDecode(jsonData);
    print(decodeData);
    return NewsModel.fromJson(decodeData['data']);
  }
}
