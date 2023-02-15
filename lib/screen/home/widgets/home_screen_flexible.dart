import 'package:flutter/material.dart';
import '../../../classes/note.dart';

Flexible flexible(List<Note> notes, TextEditingController searchController,
    setState, widget) {
  return Flexible(
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: notes.length,
        itemBuilder: (context, index) {
          String searchText = searchController.text;
          return searchText == '' ||
                  notes[index].noteContent.contains(searchText) ||
                  notes[index].noteTitle.contains(searchText)
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: ListTile(
                    onTap: () async {
                      dynamic result = await Navigator.pushNamed(
                          context, '/edit',
                          arguments: {
                            'noteTitle': notes[index].noteTitle,
                            'noteContent': notes[index].noteContent,
                          });
                      if (result == null) {
                        return;
                      }
                      setState(() {
                        notes[index].noteTitle = result['noteTitle'];
                        notes[index].noteContent = result['noteContent'];
                      });

                      widget.storage.writeNotes(notes);
                    },
                    title: Text(
                      notes[index].noteTitle,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      notes[index].noteContent,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    tileColor: const Color.fromARGB(255, 58, 58, 58),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromARGB(255, 117, 116, 116),
                      ),
                      onPressed: () {
                        setState(() {
                          notes.remove(notes[index]);
                        });
                        widget.storage.writeNotes(notes);
                      },
                    ),
                  ),
                )
              : Container();
        }),
  );
}
