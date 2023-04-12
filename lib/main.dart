import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';
import 'mainScreen.dart';

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
        primaryColor: AppTheme.primaryColor,
        backgroundColor: AppTheme.primaryColor
      ),
      title: 'Flutter Demo',
      home: MainScreen(),
    );
  }
}

