import 'package:flutter/material.dart';
import 'package:task_app/ui/widgets/task_box.dart';
import 'recent_title.dart';

class HomeRecentSection extends StatelessWidget {
  const HomeRecentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final listTest = List.generate(
      10,
      (item) => TaskBox(
        complete: false,
        task: "Complette app",
        date: DateTime.now(),
      ),
    );
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const RecentTitle(),
          const SizedBox(height: 6),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: listTest,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
