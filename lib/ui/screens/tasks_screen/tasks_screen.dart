import 'package:flutter/material.dart';
import 'package:task_app/ui/screens/tasks_screen/components/components.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleTasks(),
            SizedBox(height: 20),
            SearchTasks(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CounterTasks(),
                FilterTasks(),
              ],
            ),
            SizedBox(height: 30),
            ListTasks()
          ],
        ),
      ),
    );
  }
}
