import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';

class UiUtils {
  const UiUtils();

  static dynamic getAppBar(String title) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppTheme.primaryColor,
    );
  }

  static dynamic getAppBarWithOneAction(
      String title, dynamic action, Icon icon) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppTheme.primaryColor,
      actions: [
        IconButton(onPressed: action, icon: icon),
      ],
    );
  }

  static dynamic getAppBarWithOneActionAndImage(
      {String? path,
      required String title,
      dynamic action,
      required Icon icon}) {
    return AppBar(
      title: Row(
        children: [
          ClipRect(
            child: SizedBox(
              width: 40,
              child: FloatingActionButton(
                // radius: 20,
                backgroundColor: AppTheme.descriptionColor,
                onPressed: (){},
                child: path == null || path == "" ? const Icon(Icons.person, size: 20,) : ClipOval(child: Image.network(path)) ,
              ),
            ),
          ),
          Insets.gapW20,
          Text(title)
        ],
      ),
      backgroundColor: AppTheme.primaryColor,
      actions: [
        IconButton(onPressed: action, icon: icon),
      ],
    );
  }

  static dynamic getAppBarWithTwoActions(
      {required String title,
      required dynamic action1,
      required dynamic action2,
      required Icon icon1,
      required Icon icon2}) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        elevation: 2,
        title: Text(title),
        backgroundColor: AppTheme.primaryColor,
        actions: [
          IconButton(onPressed: action1, icon: icon1),
          IconButton(onPressed: action2, icon: icon2),
        ],
      ),
    );
  }
}
