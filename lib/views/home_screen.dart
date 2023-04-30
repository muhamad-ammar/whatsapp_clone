import 'package:flutter/material.dart';
import '../models/conversation.dart';
import '../utils/utils.dart';
import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Conversation>? conversations;

  @override
  void initState() {
    conversations = [
      Conversation(
          image:
          "https://res.cloudinary.com/ammar992/image/upload/v1680859026/Courses_List_View_3x_p503fy.png",
          name: "Muhammad Ammar",
          message: "Hello its Muhammad Ammar",
          read: false),
      Conversation(
          image:
          "https://res.cloudinary.com/ammar992/image/upload/v1680859026/Courses_List_View_3x_p503fy.png",
          name: "Haifa",
          message: "Hello its Haifa",
          read: false),
    ];
    //     ListOfConversation(
    //     [
    //   Conversation(
    //       image:
    //           "https://res.cloudinary.com/ammar992/image/upload/v1680859026/Courses_List_View_3x_p503fy.png",
    //       name: "Muhammad Ammar",
    //       message: "Hello its Muhammad Ammar",
    //       read: false),
    // ]
    // );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
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
              padding: const EdgeInsets.only(top: 15, left: 15),
              height: size.height * 0.85,
              child: ListView.separated(
                itemBuilder: (context, index) {
                 return  CustomChatTile(image: conversations![index].image!,
                      name: conversations![index].name!,
                      lastMessage: conversations![index].message!,
                      time: "",
                      read: conversations![index].read!);
                },
                separatorBuilder: (BuildContext context, int index) {
                 return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: conversations!.length,
                //     children: [
                //   Container(
                //     child: CustomChatTile(
                //       image:
                //           'https://res.cloudinary.com/ammar992/image/upload/v1680859026/Courses_List_View_3x_p503fy.png',
                //       name: 'Ammar',
                //       lastMessage: 'Hello its Muhammad Ammar',
                //       time: '2h ago',
                //       unread: true,
                //     ),
                //   ),
                //   SizedBox(
                //     height: 10,
                //   ),
                //   CustomChatTile(
                //     image: '',
                //     name: 'Ammar',
                //     lastMessage: 'Hello its Muhammad Ammar',
                //     time: '2h ago',
                //     unread: true,
                //   )
                // ]
              ),
            )
          ],
        ),
      ]),
    );
  }
}
