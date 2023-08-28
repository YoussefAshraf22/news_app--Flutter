// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        String url = article.urlOnTap;

        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch';
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),

            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(6),
            //   child: Image.network(
            //     article.img!,
            //     height: 200,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),
            // ),

            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: article.img != null
                          ? NetworkImage('${article.img}')
                          : const NetworkImage(
                              'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8='),
                      onError: (exception, stackTrace) => const NetworkImage(
                          'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8='),
                      fit: BoxFit.fill)),
              width: double.infinity,
              height: 160,
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          //   child: CachedNetworkImage(
          //     imageUrl: article.img != null
          //         ? article.img!
          //         : 'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=',
          //     imageBuilder: (context, imageProvider) => Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(12),
          //         image: DecorationImage(
          //           image: imageProvider,
          //           fit: BoxFit.fill,
          //         ),
          //       ),
          //       width: double.infinity,
          //       height: 160,
          //     ),
          //     // placeholder: (context, url) => const CircularProgressIndicator(),
          //     // errorWidget: (context, url, error) => const Icon(Icons.error),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              article.title,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                article.content ?? '', //if the content is null
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )),
        ],
      ),
    );
  }
}
