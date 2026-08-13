import 'package:flutter/material.dart';
import 'package:my_app/models/note_model.dart';
import 'package:my_app/services/note_service.dart';
import 'package:my_app/utils/contanst.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  bool isLoading = true;
  List<Notes> _listNotes = [];
  NoteService noteService = NoteService();

  // fetch notes from api
  show() async {
    _listNotes = await noteService.getData();
    setState(() {
      isLoading = false;
      _listNotes = _listNotes;
    });
  }

  @override
  void initState() {
    super.initState();
    show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box),
            onPressed: () {
              Navigator.pushNamed(context, "/add");
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => show(),
        child: ListView.builder(
          itemCount: _listNotes.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/edit_note");
                },
                title: Text(
                  _listNotes[index].title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  _listNotes[index].content,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Delete Note"),
                          content: Text("Are you sure?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"),
                            ),
                            TextButton(
                              onPressed: () async {
                                await noteService.deleteData(
                                  _listNotes[index].id,
                                );
                                Navigator.pop(context);
                                show();
                                showSnackBar(context, "Note berhasil dihapus");
                              },
                              child: Text("Delete"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
