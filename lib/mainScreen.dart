import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'package:flutter/services.dart';
import 'views/views.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppTheme.primaryColor, // change color here
    ));
    return const Scaffold(
      body: HomeScreen()
    );
  }
}
