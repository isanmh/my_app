import 'package:flutter/material.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';

class ChattyPage extends StatelessWidget {
  const ChattyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset("assets/images/pic.png", height: 100, width: 100),
            SizedBox(height: 20),
            Text(
              "Sabrina Carpenter",
              style: TextStyle(
                color: whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Travel Freelancer",
              style: TextStyle(
                color: lightBlueColor,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
