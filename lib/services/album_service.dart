// services
import 'dart:convert';

import 'package:my_app/models/album_model.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/utils/contanst.dart';

Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse(albumUrl),
    headers: {'Accept': 'application/json'},
  );

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}
