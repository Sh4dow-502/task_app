import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Hello, Josue",
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            size: 30,
            color: Colors.grey,
          ),
          padding: const EdgeInsets.only(right: 17),
        ),
      ],
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
