import 'package:flutter/material.dart';

class RecentTitle extends StatelessWidget {
  const RecentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Recent tasks",
      style: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: Color(0xff535353),
      ),
    );
  }
}
