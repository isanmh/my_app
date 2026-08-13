import 'package:flutter/material.dart';
import 'package:my_app/models/chatty_model.dart';
import 'package:my_app/services/chatty_service.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';
import 'package:my_app/widgets/chat_tile.dart';

class ChattyApi extends StatefulWidget {
  const ChattyApi({super.key});

  @override
  State<ChattyApi> createState() => _ChattyApiState();
}

class _ChattyApiState extends State<ChattyApi> {
  // chat model list
  List<ChattyModel> chatList = [];
  bool isLoading = true;

  // service instance
  final ChattyService chattyService = ChattyService();

  // constractor
  @override
  void initState() {
    super.initState();

    chattyService
        .getChatList()
        .then((res) {
          setState(() {
            chatList = res;
            isLoading = false;
          });
        })
        .catchError((error) {
          print("gagal memuat data: $error");
          setState(() {
            isLoading = false;
          });
        });
  }

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
                      // looping ChatTile
                      // for (var i = 0; i < 2; i++)
                      // dari api
                      // jika data kosong, tampilkan loading
                      if (chatList.isEmpty)
                        Center(child: CircularProgressIndicator())
                      else
                        for (var chat in chatList)
                          ChatTile(
                            imageUrl: chat.imageUrl,
                            name: chat.name,
                            message: chat.message,
                            time: chat.time,
                            unread: chat.unread,
                          ),

                      SizedBox(height: 30),
                      Text("Groups", style: titleTextStyle),
                      // looping ChatTile
                      for (var i = 0; i < 2; i++)
                        ChatTile(
                          imageUrl: "assets/images/group1.png",
                          name: "Jakarta Fair",
                          message: "Why does everyone ca...",
                          time: "11:11",
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
