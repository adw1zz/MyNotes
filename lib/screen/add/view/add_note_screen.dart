import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  void createNote() {
    Navigator.pop(context, {
      'noteTitle': titleController.text,
      'noteContent': contentController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          body: Column(
            children: [
              noteTitle(titleController),
              noteBody(contentController),
              create(createNote),
            ],
          )),
    );
  }
}
