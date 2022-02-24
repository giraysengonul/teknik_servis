import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback onPressed;

  const AppBarWidget({Key? key, this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 5.0),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: primaryColor),
        titleTextStyle: TextStyle(color: primaryColor),
        title: Text(
          title!,
          style: const TextStyle(fontSize: 20, fontFamily: 'primaryFont'),
        ),
        /*   actions: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.chat),
          ),
        ],*/
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
