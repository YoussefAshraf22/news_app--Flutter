import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/widget/future_builder.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business'),
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
          category: 'business',
        ),
      ]),
    );
  }
}
