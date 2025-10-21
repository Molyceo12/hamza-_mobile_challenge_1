import 'package:flutter/material.dart';
import 'package:mobile_template_pages/src/homescreen/view/homescreen.dart';
import 'package:mobile_template_pages/src/statstics/view/statstics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const StatisticsScreen(),
    );
  }
}
