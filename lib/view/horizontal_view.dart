// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../screens/business.dart';
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
        img: 'assets/business.jpg',
        name: 'Business',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BusinessPage(),
            ),
          );
        },
      ),
      Model(
        img: 'assets/health.avif',
        name: 'Health',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HealthPage(),
            ),
          );
        },
      ),
      Model(
          img: 'assets/entertainment.jpg',
          name: 'Enrertaiment',
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const EntertainmentPage()),
            );
          }),
      Model(
        img: 'assets/science.avif',
        name: 'Science',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SciencePage(),
            ),
          );
        },
      ),
      Model(
        img: 'assets/sports.jpg',
        name: 'Sports',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SportsPage(),
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
              builder: (context) => const TechnologyPage(),
            ),
          );
        },
      ),
    ];

    return SizedBox(
      height: 85,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) => HorizontalContainer(
                category: category[index],
              )),
    );
  }
}
