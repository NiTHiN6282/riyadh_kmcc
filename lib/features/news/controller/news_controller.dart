import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/news_model.dart';
import '../repository/news_repository.dart';

final newsControllerProvider = StateNotifierProvider<NewsController, bool>(
  (ref) => NewsController(
    newsRepository: ref.watch(newsRepositoryProvider),
  ),
);
final getNewsProvider = FutureProvider<NewsModel>((ref) async {
  return ref.watch(newsControllerProvider.notifier).getNews();
});

class NewsController extends StateNotifier<bool> {
  final NewsRepository _newsRepository;
  NewsController({required NewsRepository newsRepository})
      : _newsRepository = newsRepository,
        super(false); // loading

  Future<NewsModel> getNews() async {
    final news = await _newsRepository.getNews();
    return news;
  }
}
