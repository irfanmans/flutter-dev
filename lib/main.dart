import 'package:flutter/material.dart';
// import 'package:m06_m07/pages/login.dart';
import 'package:m06_m07/pages/register.dart';
// import 'package:m06_m07/pages/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Register(),
      ),
    );
  }
}
