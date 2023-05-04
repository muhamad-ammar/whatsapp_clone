import 'package:flutter/material.dart';
import 'package:whatsapp/constants/custom_chat_screen.dart';
import '../constants/constants.dart';

class CustomChatTile extends StatefulWidget {
  String? image;
  String name;
  String lastMessage;
  String time;
  bool read;
  String id;

  CustomChatTile(
      {Key? key,
      required this.image,
      required this.name,
        required this.id,
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CustomChatScreen(chatId: widget.id, name: widget.name,image: widget.image,)));
      },
      onLongPress: () {
        print(widget.lastMessage);
      },
      child: Container(
        width: screenWidth * 0.99,
        height: 80,
        decoration: BoxDecoration(
            color: AppTheme.backgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: [
            SizedBox(
              width: Utils.getScreenWidth(context)*0.15,
              height: Utils.getScreenWidth(context)*0.2,
              child: FloatingActionButton(
                backgroundColor: AppTheme.descriptionColor,
                onPressed: () {},
                heroTag: null,
                child: widget.image == null || widget.image == ""
                    ? const Icon(
                        Icons.person,
                        size: 20,
                      )
                    : ClipOval(
                        child: Image.network(
                        widget.image!,
                        fit: BoxFit.cover,
                      )),
              ),
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
                  ),
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
      ),
    );
  }
}
