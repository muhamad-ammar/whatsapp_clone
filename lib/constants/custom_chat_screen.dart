import 'package:flutter/material.dart';
import 'package:whatsapp/utils/utils.dart';
import 'constants.dart';

class CustomChatScreen extends StatefulWidget {
  final String chatId;
  final String name;
  final String? image;

  const CustomChatScreen(
      {Key? key, required this.chatId, required this.name, this.image})
      : super(key: key);

  @override
  State<CustomChatScreen> createState() => _CustomChatScreenState();
}

class _CustomChatScreenState extends State<CustomChatScreen> {
  List list = [
    {
      'userId': '+923226258404',
      'message': 'Hi Roberto, what courses you take for this week?',
      'createdAt': '4.30 AM'
    },
    {
      'userId': '+923226258534',
      'message': 'Design for Non-Designers',
      'createdAt': '4.30 AM'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiUtils.getAppBarWithOneActionAndImage(
          path: widget.image,
          title: widget.name,
          action: () {},
          icon: const Icon(Icons.more_vert)),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(top: 15, left: 15),
            height: Utils.getScreenHeight(context),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Align(
                      alignment: (list[index]['userId'] == widget.chatId
                          ? Alignment.topRight
                          : Alignment.topLeft),
                      child: Container(
                        width: Utils.getScreenWidth(context) * 0.65,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    list[index]['userId'] == widget.chatId
                                        ? const Radius.circular(15)
                                        : const Radius.circular(0),
                                topRight: const Radius.circular(15),
                                bottomLeft: const Radius.circular(15),
                                bottomRight:
                                    list[index]['userId'] == widget.chatId
                                        ? const Radius.circular(0)
                                        : const Radius.circular(15)),
                            color: list[index]['userId'] == widget.chatId
                                ? AppTheme.successColor
                                : AppTheme.grayColor.withOpacity(0.3)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index]['message'],
                            ),
                            Insets.gapH5,
                            Text(
                              list[index]['createdAt'],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            // child: ,
          )),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                      )),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your message',
                    ),
                  ),
                ),
              ),
              Insets.gapW5,
              FloatingActionButton(
                onPressed: () {},
                heroTag: null,
                backgroundColor: AppTheme.primaryColor,
                child: Icon(Icons.send),
              )
            ],
          ),
          Insets.gapH8,
        ],
      ),
    );
  }
}
