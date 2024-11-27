import 'package:flutter/material.dart';

class InputItem extends StatelessWidget {
  final String itemType;
  const InputItem({
    super.key,
    required this.itemType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: TextField(
        autofocus: false,
        maxLength: 80,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          counter: const Text(""),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0xfff3f3f3),
          filled: true,
          hintText: "Enter ${itemType == "task" ? "task" : "category"}",
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
    );
  }
}
