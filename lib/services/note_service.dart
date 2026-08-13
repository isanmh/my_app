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
  Future postData(Notes note) async {
    try {
      final response = await http.post(
        Uri.parse(notesUrl),
        body: {'title': note.title, 'content': note.content},
      );
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // put
  Future putData(Notes note) async {
    try {
      final response = await http.put(
        Uri.parse('$notesUrl/${note.id}'),
        body: {'title': note.title, 'content': note.content},
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // delete
  Future deleteData(String id) async {
    try {
      final response = await http.delete(Uri.parse('$notesUrl/$id'));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
