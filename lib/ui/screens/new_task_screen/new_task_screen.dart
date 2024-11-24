import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Task",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15),
            InputTask(),
            SizedBox(height: 15),
            SelectDateTime(),
            SizedBox(height: 40),
            Column(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Wrap(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SelectDateTime extends StatelessWidget {
  const SelectDateTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color(0xff6158Ff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.edit_calendar,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 7),
            const Text(
              "DateTime",
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}

class InputTask extends StatelessWidget {
  const InputTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: TextField(
        autofocus: true,
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
          hintText: "Enter task",
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
    );
  }
}
