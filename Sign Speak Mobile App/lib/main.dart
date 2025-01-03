// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:sign_speak/pages/deaf_calling.dart';
import 'package:sign_speak/pages/end_calling.dart';
import 'package:sign_speak/pages/home_page.dart';
import 'package:sign_speak/pages/landing_page.dart'; 
import 'package:sign_speak/pages/listener_calling.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: "AIzaSyDN55YHssjXDdvSDypPMaxRfypEYF01R",
    appId: "1:709611488130:android:a5393741c459908b71859b",
    messagingSenderId: "709611488130",
    projectId: "sign-speak-c564e"
    )
  );
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
        '/home': (context) => const HomePage(),
        '/listenercalling': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return ListenerCalling(
            user: arguments?['user'] as String,
            roomID: arguments?['roomID'] as String,
          );
        },
        '/deafcalling': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return DeafCalling(
            user: arguments?['user'] as String,
            roomID: arguments?['roomID'] as String,
          );
        },
        
       

      },
    );
  }
}
