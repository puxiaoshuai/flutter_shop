import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/indexpage.dart';
import 'pages/home/hot_web.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: IndexPage(),

    );
  }
}
