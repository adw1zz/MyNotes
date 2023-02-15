import 'package:flutter/material.dart';
import '../../../classes/note.dart';

FloatingActionButton button(
    BuildContext context, setState, List<Note> notes, widget) {
  return FloatingActionButton(
    onPressed: () async {
      dynamic result = await Navigator.pushNamed(context, '/add');
      if (result == null) {
        return;
      }
      Note newNote = Note(
          noteTitle: result['noteTitle'], noteContent: result['noteContent']);
      setState(() {
        notes.add(newNote);
      });

      widget.storage.writeNotes(notes);
    },
    backgroundColor: Colors.amber,
    child: const Icon(
      Icons.add,
      size: 30,
    ),
  );
}
