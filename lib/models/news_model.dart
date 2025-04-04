class NewsModel {
  final int currentPage;
  final int totalPages;
  final int pageSize;
  final int totalNews;
  final List<News> news;

  NewsModel({
    required this.currentPage,
    required this.totalPages,
    required this.pageSize,
    required this.totalNews,
    required this.news,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      currentPage: json['currentPage'],
      totalPages: json['totalPages'],
      pageSize: json['pageSize'],
      totalNews: json['totalNews'],
      news: List<News>.from(json['news'].map((x) => News.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'currentPage': currentPage,
      'totalPages': totalPages,
      'pageSize': pageSize,
      'totalNews': totalNews,
      'news': news.map((x) => x.toJson()).toList(),
    };
  }
}

class News {
  final int id;
  final String type;
  final String heading;
  final String author;
  final String createdAt;
  final String image;
  final String authorImage;

  News({
    required this.id,
    required this.type,
    required this.heading,
    required this.author,
    required this.createdAt,
    required this.image,
    required this.authorImage,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      type: json['type'],
      heading: json['heading'],
      author: json['author'],
      createdAt: json['createdAt'],
      image: json['image'],
      authorImage: json['authorImage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'heading': heading,
      'author': author,
      'createdAt': createdAt,
      'image': image,
      'authorImage': authorImage,
    };
  }
}
