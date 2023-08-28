class ArticleModel {
  final String title;
  final String? content;
  final String urlOnTap;
  final String? img;
  // final Source? name;
  // final source? src;
  ArticleModel({
    required this.title,
    required this.content,
    required this.urlOnTap,
    required this.img,
    // required this.name,
    // required this.src,
  });
}

class Source {
  final String src;
  final String name;

  Source(this.src, this.name);
}
