// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/component_model.dart';

// ignore: must_be_immutable
class ComponentWidget extends StatelessWidget {
  Component component;
  ComponentWidget({super.key, required this.component});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        String url = '${component.urlOnTap}';

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
                      image: NetworkImage(component.img!), fit: BoxFit.cover)),
              width: double.infinity,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              component.title!,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              component.content!,
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
