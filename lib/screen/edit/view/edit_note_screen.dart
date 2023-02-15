import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  void editNote() {
    Navigator.pop(context, {
      'noteTitle': titleController.text,
      'noteContent': contentController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    titleController.text = data['noteTitle'];
    contentController.text = data['noteContent'];

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          body: Column(
            children: [
              noteTitle(titleController),
              noteBody(contentController),
              edit(editNote),
            ],
          )),
    );
  }
}
