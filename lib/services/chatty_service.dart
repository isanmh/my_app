import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_app/models/chatty_model.dart';
import 'package:my_app/utils/contanst.dart';

class ChattyService {
  // get Chatty from Reqresin
  Future<List<ChattyModel>> getChatList() async {
    final response = await http.get(
      Uri.parse(reqURl),
      headers: {
        'Content-Type': 'application/json',
        // api sendiri
        'x-api-key': 'reqres_2c8ad21498474d179845b97e915ad680',
      },
    );
    // debug
    print("Status Code: ${response.statusCode}");
    print("BODY: ${response.body}");
    // cek status code
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List<dynamic> data = jsonData['data'];

      return data.map((json) => ChattyModel.fromJson(json)).toList();
    }

    throw Exception('Gagal memuat data chatty');
  }

  // https://dummyjson.com/docs/products json group
  Future<List<ChattyModel>> getChatGroups() async {
    final response = await http.get(
      Uri.parse(groupUrl),
      headers: {'Content-Type': 'application/json'},
    );
    // debug
    print("Status Code: ${response.statusCode}");
    print("BODY: ${response.body}");
    // cek status code
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List<dynamic> data = jsonData['products'];

      return data.map((json) => ChattyModel.fromJsonGroup(json)).toList();
    }

    throw Exception('Gagal memuat data chatty');
  }
}
