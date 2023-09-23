import 'package:cubesharp/Screens/Homescreen.dart';
import 'package:cubesharp/Screens/Login_screen.dart';
import 'package:flutter/material.dart';
import 'package:cubesharp/Screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const spalsh_screen(),
    );
  }
}

