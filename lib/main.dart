import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const TomasApp());
}

class TomasApp extends StatelessWidget {
  const TomasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ONE TOMAS",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}