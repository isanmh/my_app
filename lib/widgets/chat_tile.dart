import 'package:flutter/material.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';

class ChatTile extends StatefulWidget {
  const ChatTile({super.key});

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/friend1.png", width: 60),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Joshuer", style: titleTextStyle),
            Text("Sorry, you’re not my ty...", style: subTitleTextStyle),
          ],
        ),
        Text("Now", style: subTitleTextStyle),
      ],
    );
  }
}
