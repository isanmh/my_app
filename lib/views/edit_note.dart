import 'package:flutter/material.dart';
import 'package:my_app/services/note_service.dart';
import 'package:my_app/utils/contanst.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  NoteService noteService = NoteService();

  final titleController = TextEditingController();
  final contentController = TextEditingController();
  // validasi
  bool validateTitle = false;
  bool validateContent = false;

  @override
  Widget build(BuildContext context) {
    // tambahkan arguments
    final args = ModalRoute.of(context)!.settings.arguments as List<String>;

    // jika args ada
    if (args.isNotEmpty) {
      titleController.text = args[1];
      contentController.text = args[2];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Note"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  errorText: validateTitle ? "Title required" : null,
                ),
                controller: titleController,
              ),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Content',
                  errorText: validateContent ? "Content required" : null,
                ),
                controller: contentController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  setState(() {
                    titleController.text.isEmpty
                        ? validateTitle = true
                        : validateTitle = false;
                    contentController.text.isEmpty
                        ? validateContent = true
                        : validateContent = false;
                  });

                  if (validateTitle == false && validateContent == false) {
                    bool response = await noteService.putData(
                      args[0],
                      titleController.text,
                      contentController.text,
                    );
                    if (response) {
                      showSnackBar(context, "Note berhasil diupdate");
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        "/notes",
                        (route) => false,
                      );
                    } else {
                      showSnackBar(context, "Note gagal diupdate");
                    }
                  }
                },
                child: Text("Update Note"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
