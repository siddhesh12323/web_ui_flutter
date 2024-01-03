import 'package:flutter/material.dart';
import 'package:web_xpense/pages/home.dart';
import 'package:web_xpense/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Xpense',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'HindSiliguri',
        primaryColor: AppColors.primary,
      ),
      home: const Home(),
    );
  }
}
