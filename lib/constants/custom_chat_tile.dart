import 'package:flutter/material.dart';

import 'colors.dart';

class CustomChatTile extends StatefulWidget {
  String image;
  String name;
  String lastMessage;
  String time;
  bool unread;
  CustomChatTile({Key? key, required this.image, required this.name, required this.lastMessage, required this.time, required this.unread}) : super(key: key);

  @override
  State<CustomChatTile> createState() => _CustomChatTileState();
}

class _CustomChatTileState extends State<CustomChatTile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenHeight = size.height;
    final double screenWidth = size.width;
    return Container(
      width: screenWidth*0.7,
      height: 80,
      decoration: BoxDecoration(color: AppTheme.backgroundColor,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(width: 20,),
          SizedBox(
            width: screenWidth*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name),
                const SizedBox(height: 10,),
                Text(widget.lastMessage)
              ],
            ),
          ),
          SizedBox(),
        ],

      ),
    );

  }
}
