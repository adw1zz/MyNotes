import 'package:flutter/material.dart';

Padding create(Function createNote) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
        ),
        onPressed: () {
          createNote();
        },
        child: const Text(
          'Create',
          style: TextStyle(
            fontSize: 16,
          ),
        )),
  );
}
