import 'package:flutter/material.dart';

Padding noteTitle(TextEditingController titleController) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: TextField(
      controller: titleController,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      decoration: const InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 117, 116, 116),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}
