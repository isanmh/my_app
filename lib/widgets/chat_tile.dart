import 'package:flutter/material.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';

class ChatTile extends StatelessWidget {
  // parameter ChatTile
  final String imageUrl;
  final String name;
  final String message;
  final String time;

  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(imageUrl, width: 60),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: titleTextStyle),
                Text(
                  message,
                  style: subTitleTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Spacer(),
          Text(time, style: subTitleTextStyle),
        ],
      ),
    );
  }
}
