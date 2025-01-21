import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home/home_page.dart';
import 'package:my_portfolio/styles/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Porfolio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: AppTheme.darkTheme,
    );
  }
}
