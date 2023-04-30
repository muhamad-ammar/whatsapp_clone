import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CustomChatTile extends StatefulWidget {
  String image;
  String name;
  String lastMessage;
  String time;
  bool read;

  CustomChatTile(
      {Key? key,
      required this.image,
      required this.name,
      required this.lastMessage,
      required this.time,
      required this.read})
      : super(key: key);

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
      width: screenWidth * 0.99,
      height: 80,
      decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(widget.image),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: screenWidth * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                )
                ,
                const SizedBox(
                  height: 10,
                ),
                Text(widget.lastMessage,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(color: AppTheme.darkGrayColor))
              ],
            ),
          ),
          widget.read
              ? Container()
              : const SizedBox(
                  child: Icon(
                    Icons.circle,
                    color: AppTheme.primaryColor,
                    size: 10,
                  ),
                ),
        ],
      ),
    );
  }
}
