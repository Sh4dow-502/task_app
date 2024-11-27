import 'package:flutter/material.dart';
import 'package:task_app/ui/screens/components/components.dart';

class EditItemScreen extends StatelessWidget {
  final String item;
  const EditItemScreen({super.key, required this.item});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item == "task" ? "Edit Task" : "Edit Category",
              style: const TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            InputItem(itemType: item),
            const SizedBox(height: 15),
            item == "task" ? const SelectDateTime() : const SizedBox(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Edit",
          style: TextStyle(fontSize: 16),
        ),
        icon: const Icon(Icons.edit),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: const Color(0xff6C63FF),
        foregroundColor: Colors.white,
        extendedPadding: const EdgeInsets.symmetric(horizontal: 25),
        extendedIconLabelSpacing: 4,
      ),
    );
  }
}
