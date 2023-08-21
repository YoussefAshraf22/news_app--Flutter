import 'package:flutter/material.dart';

import '../models/category_model.dart';

class HorizontalContainer extends StatelessWidget {
  final Model category;
  const HorizontalContainer({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: category.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    category.img!,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12)),
          width: 160,
          height: 85,
          child: Center(
            child: Text(category.name!,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
