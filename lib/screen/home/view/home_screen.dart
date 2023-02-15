import 'package:flutter/material.dart';
import '../../../classes/note.dart';
import '../../../services/storage_service.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.storage});

  final StorageService storage;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Note> notes = [];

  @override
  void initState() {
    super.initState();
    widget.storage.readNotes().then((value) => {
          setState(() {
            notes = value;
          })
        });
  }

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        body: Column(
          children: [
            search(searchController, setState),
            flexible(notes, searchController, setState, widget),
          ],
        ),
        floatingActionButton: button(context, setState, notes, widget),
      ),
    );
  }
}
