import 'package:flutter/material.dart';
import 'package:improving_your_ui/home_page_bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Improving Your UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarAppNavigator(),
    );
  }
}
