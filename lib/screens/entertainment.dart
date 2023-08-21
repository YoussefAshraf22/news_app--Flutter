import 'package:flutter/material.dart';
import 'package:news_app/view/horizontal_view.dart';
import 'package:news_app/view/vertical_view.dart';

import 'home_page.dart';

class EntertainmentPage extends StatelessWidget {
  const EntertainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entertainment'),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.orange),
        ),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: HorizontalView(),
        ),
        VerticalView(),
      ]),
    );
  }
}
