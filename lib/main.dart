import 'package:flutter/material.dart';
import 'package:uas_pemmob/pages/homepage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFf5f5eb)),
        home: HomePage());
  }
}
