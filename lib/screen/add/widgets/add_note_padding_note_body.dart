import 'package:flutter/material.dart';

Padding noteBody(TextEditingController contentController) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: TextField(
        controller: contentController,
        keyboardType: TextInputType.multiline,
        maxLines: 18,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        decoration: const InputDecoration(
            hintText: 'Enter text',
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 117, 116, 116),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ));
}
