import 'package:flutter/material.dart';
import '../utils/utils.dart';
import 'dart:ui' as ui;
import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return Scaffold(
      appBar: Utils.getAppBarWithTwoActions(
          title: Strings.whatsApp,
          icon1: const Icon(Icons.search),
          icon2: const Icon(Icons.more_vert),
          action1: () {},
          action2: () {}),
      body: Column(children: [
        Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              fit: BoxFit.cover,
              "assets/background.png",
            )),
            Container(
              padding: EdgeInsets.only(top: 15,left: 15),
              height: size.height*0.85,

              child: ListView(
                children:[ CustomChatTile(
                  image: '',
                  name: 'Ammar',
                  lastMessage: 'Hello its Muhammad Ammar',
                  time: '2h ago',
                  unread: true,
                ),]
              ),
            )
          ],
        ),
      ]),
    );
  }
}
