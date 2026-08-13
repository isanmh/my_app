import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_app/models/note_model.dart';
import 'package:my_app/utils/contanst.dart';

class NoteService {
  // get
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(notesUrl));
      if (response.statusCode == 200) {
        List jsonDecode = json.decode(response.body);
        return jsonDecode.map((data) => Notes.fromJson(data)).toList();
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // post
  // put
  // delete
}
