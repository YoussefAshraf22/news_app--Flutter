import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../widget/vertical_container.dart';

class VerticalView extends StatelessWidget {
  const VerticalView({super.key});

  @override
  Widget build(BuildContext context) {
   final List<Model> category = [
    // ignore: missing_required_param
    Model(
          img: 'assets/entertaiment.jpg',
          name: 'Enrertaiment',),
        // ignore: missing_required_param
      Model(
          img: 'assets/entertaiment.jpg',
          name: 'Enrertaiment',),
              // ignore: missing_required_param
    Model(
          img: 'assets/entertaiment.jpg',
          name: 'Enrertaiment',),
       // ignore: missing_required_param
    Model(
          img: 'assets/entertaiment.jpg',
          name: 'Enrertaiment',),
        // ignore: missing_required_param
    Model(
          img: 'assets/entertaiment.jpg',
          name: 'Enrertaiment',),
   ];
    return  ListView.builder(
      itemCount: category.length,
      itemBuilder: (context, index) =>
       VerticalContainer(container: category[index],),);
  }
}
