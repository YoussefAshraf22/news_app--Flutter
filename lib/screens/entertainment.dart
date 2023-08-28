import 'package:flutter/material.dart';
import 'package:news_app/view/horizontal_view.dart';

import '../widget/build_general_news_widget.dart';
import 'home_page.dart';

class EntertainmentPage extends StatelessWidget {
  const EntertainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entertainment'),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.orange),
        ),
      ),
      body: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: HorizontalView(),
        ),
        BuildGeneralNews(),
      ]),
    );
  }
}
