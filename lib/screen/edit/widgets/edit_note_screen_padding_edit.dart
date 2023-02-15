import 'package:flutter/material.dart';

Padding edit(Function editNote) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
        ),
        onPressed: () {
          editNote();
        },
        child: const Text(
          'Edit',
          style: TextStyle(
            fontSize: 16,
          ),
        )),
  );
}
