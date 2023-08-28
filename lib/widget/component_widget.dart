// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/article_model.dart';

// ignore: must_be_immutable
class ComponentWidget extends StatelessWidget {
  ArticleModel article;
  ComponentWidget({super.key, required this.article});
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
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(article.img!), fit: BoxFit.cover)),
              width: double.infinity,
              height: 160,
            ),
          ),
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
              article.content!,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
            endIndent: 20,
            indent: 20,
          )
        ],
      ),
    );
  }
}
