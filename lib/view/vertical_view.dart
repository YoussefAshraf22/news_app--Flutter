import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../widget/vertical_container.dart';

class VerticalView extends StatelessWidget {
  const VerticalView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Model> category = [
      // ignore: missing_required_param
      Model(
          img: 'assets/entertainment.jpg',
          name: 'Enrertaiment',
          name2:
              'Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything '),
      // ignore: missing_required_param
      Model(
          img: 'assets/entertainment.jpg',
          name: 'Enrertaiment',
          name2:
              'Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything '),
      // ignore: missing_required_param
      Model(
          img: 'assets/entertainment.jpg',
          name: 'Enrertaiment',
          name2:
              'Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything '),
      // ignore: missing_required_param
      Model(
          img: 'assets/entertainment.jpg',
          name: 'Enrertaiment',
          name2:
              'Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything '),
      // ignore: missing_required_param
      Model(
          img: 'assets/entertainment.jpg',
          name: 'Enrertaiment',
          name2:
              'Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything Anything '),
    ];
    return SliverList.builder(
      itemCount: category.length,
      itemBuilder: (context, index) => VerticalContainer(
        container: category[index],
      ),
    );
  }
}
