import 'package:flutter/material.dart';

Padding search(TextEditingController searchController, setState) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: TextField(
        controller: searchController,
        onChanged: (value) {
          setState(() {});
        },
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 117, 116, 116),
          ),
          fillColor: const Color.fromARGB(255, 58, 58, 58),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 117, 116, 116),
          )
        ),
      ));
}
