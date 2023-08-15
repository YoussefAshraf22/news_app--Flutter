import 'package:flutter/material.dart';

import '../models/category_model.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({super.key, required this.container});
  final Model container;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(container.img!), fit: BoxFit.fill)),
            width: double.infinity,
            height: 160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            container.name!,
            style:const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            container.name2!,
            style:const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
