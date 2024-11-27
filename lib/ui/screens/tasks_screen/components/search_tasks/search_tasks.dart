import 'package:flutter/material.dart';

class SearchTasks extends StatelessWidget {
  const SearchTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      maxLines: 1,
      maxLength: 80,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        counter: const Text(""),
        prefixIcon: const Icon(Icons.search),
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 17),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color(0xfff3f3f3),
        filled: true,
      ),
    );
  }
}
