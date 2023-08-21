import 'package:flutter/material.dart';

import '../view/horizontal_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 60,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.orange,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.orange,
            ),
          )
        ],
      ),
      // body: const CustomScrollView(slivers: [
      //   SliverToBoxAdapter(
      //     child: HorizontalView(),
      //   ),
      //   // VerticalView()
      //   SliverToBoxAdapter(
      //     child:

      body: const Column(children: [
        HorizontalView(),
        Padding(
          padding: EdgeInsets.only(top: 200),
          child: Text(
            'Welcome To News Egypt App ♥',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ),
      ]),
    );
    // ]));
  }
}
