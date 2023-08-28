import 'package:flutter/material.dart';
import '../widget/future_builder.dart';
import 'home_page.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Page'),
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
          category: 'Health',
        ),
      ]),
    );
  }
}
