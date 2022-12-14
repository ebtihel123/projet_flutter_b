
import 'package:flutter/material.dart';

import 'screens/homePage.dart';
import 'screens/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => LoginPage(),
      },
      home: HomePage(),
    );
  }
}