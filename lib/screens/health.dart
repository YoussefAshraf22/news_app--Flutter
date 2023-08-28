import 'package:flutter/material.dart';
import '../widget/build_general_news_widget.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Health Screen')),
      body: const CustomScrollView(slivers: [
        BuildGeneralNews(),
      ]),
    );
  }
}
