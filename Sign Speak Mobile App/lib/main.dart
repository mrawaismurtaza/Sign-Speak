import 'package:flutter/material.dart';
// import 'package:sign_speak/pages/home_page.dart';
import 'package:sign_speak/pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        // '/home': (context) => const HomePage(),
      },
    );
  }
}