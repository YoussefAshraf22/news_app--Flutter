import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/widget/future_builder.dart';

class TechnologyPage extends StatelessWidget {
  const TechnologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Technology Page'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.orange,
            )),
      ),
      body: const CustomScrollView(slivers: [
        FutureBuilderNews(
          category: 'technology',
        ),
      ]),
    );
  }
}
