import 'package:flutter/material.dart';

import '../models/category_model.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({super.key, required this.container});
  final Model container;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(container.img!), fit: BoxFit.fill)),
          width: 300,
          height: 200,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          container.name!,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
