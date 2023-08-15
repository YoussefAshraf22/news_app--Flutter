import 'package:flutter/material.dart';
import 'package:news_app/view/horizontal_view.dart';
import 'package:news_app/view/vertical_view.dart';

class EntertainmentPage extends StatelessWidget {
  const EntertainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entertainment'),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: HorizontalView(),
        ),
        // VerticalView(),
      ]),
    );
  }
}
