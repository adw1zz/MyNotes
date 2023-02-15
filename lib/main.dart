import 'package:flutter/material.dart';
import 'package:my_notes/screen/home/home.dart';
import 'package:my_notes/screen/add/add.dart';
import 'package:my_notes/screen/edit/edit.dart';
import 'package:my_notes/services/storage_service.dart';

void main() {
  runApp(
    MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Home(storage: StorageService()),
      '/add': (context) => const AddNote(),
      '/edit': (context) => const EditNote(),
    }),
  );
}
