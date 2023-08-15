import 'package:flutter/material.dart';

import '../view/vertical_view.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health Screen')),
      body: CustomScrollView(slivers: [
        VerticalView(),
      ]),
    );
  }
}
