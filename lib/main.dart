import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const SafeArea(
        child: HomePage(),
      ),
      title: 'News App',
    );
  }
}
