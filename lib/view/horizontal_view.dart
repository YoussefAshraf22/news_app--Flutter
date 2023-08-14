import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../screens/entertainment.dart';
import '../screens/health.dart';
import '../screens/science.dart';
import '../screens/sports.dart';
import '../screens/technology.dart';
import '../widget/horizontal_container.dart';

class HorizontalView extends StatelessWidget {
  const HorizontalView({super.key});

  @override
  Widget build(BuildContext context) {
   final List<Model> category = [
      Model(
          img: 'assets/entertaiment.jpg',
          name: 'Enrertaiment',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EntertainmentPage(),
                ));
          }),
      Model(
        img: 'assets/health.avif',
        name: 'Health',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HealthPage(),
            ),
          );
        },
      ),
      Model(
        img: 'assets/science.avif',
        name: 'Science',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SciencePage(),
            ),
          );
        },
      ),
      Model(
        img: 'assets/science.avif',
        name: 'Sports',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SportsPage(),
            ),
          );
        },
      ),
      Model(
        img: 'assets/technology.jpeg',
        name: 'Technology',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TechnologyPage(),
            ),
          );
        },
      ),
    ];

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) => HorizontalContainer(
              category: category[index],
            ));
  }
}
