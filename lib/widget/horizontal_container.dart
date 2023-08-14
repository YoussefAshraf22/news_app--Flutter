import 'package:flutter/material.dart';

import '../models/category_model.dart';

class HorizontalContainer extends StatelessWidget {
  final Model category;
  const HorizontalContainer({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: category.onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        category.img!,
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12)),
              width: 160,
              height: 85,
              child: Center(
                child: Text(category.name!,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
