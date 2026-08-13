class ChattyModel {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool unread;

  ChattyModel({
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.unread,
  });

  // list isi chat
  static List<ChattyModel> chatlist() {
    return [
      ChattyModel(
        imageUrl: "assets/images/friend1.png",
        name: "Joshuer",
        message: "Sorry, you’re not my type.",
        time: "Now",
        unread: false,
      ),
      ChattyModel(
        imageUrl: "assets/images/friend2.png",
        name: "Gabriella",
        message: "I saw it clearly and might...",
        time: "Now",
        unread: true,
      ),
      ChattyModel(
        imageUrl: "assets/images/friend2.png",
        name: "Gabriella",
        message: "I saw it clearly and might...",
        time: "Now",
        unread: true,
      ),
    ];
  }

  // pemangilan api
  factory ChattyModel.fromJson(Map<String, dynamic> json) {
    return ChattyModel(
      imageUrl: json['avatar'],
      name: json['first_name'] + " " + json['last_name'],
      message: json['email'],
      time: "Now",
      unread: false,
    );
  }
}
