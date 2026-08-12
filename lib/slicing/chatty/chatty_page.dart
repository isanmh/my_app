import 'package:flutter/material.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';
import 'package:my_app/widgets/chat_tile.dart';

class ChattyPage extends StatelessWidget {
  const ChattyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, color: whiteColor),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
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
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Friends", style: titleTextStyle),
                      ChatTile(
                        imageUrl: "assets/images/friend1.png",
                        name: "Joshuer",
                        message: "Sorry, you’re not my type.",
                        time: "Now",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/friend2.png",
                        name: "Gabriella",
                        message: "I saw it clearly and mig...",
                        time: "2:30",
                        unread: true,
                      ),
                      SizedBox(height: 30),
                      Text("Groups", style: titleTextStyle),
                      ChatTile(
                        imageUrl: "assets/images/group1.png",
                        name: "Jakarta Fair",
                        message: "Why does everyone ca...",
                        time: "11:11",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group2.png",
                        name: "Study Group",
                        message: "The meeting is at 3 PM.",
                        time: "7:11",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group3.png",
                        name: "Book Club",
                        message: "What book are we reading next?",
                        time: "7:11",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/logo.png",
                        name: "Book Club",
                        message:
                            "What book are we reading next? asdklfjalksdfjalksdjfklasj",
                        time: "7:11",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/login.png",
                        name: "Book Club",
                        message: "What book are we reading next?",
                        time: "7:11",
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
