import 'package:flutter/material.dart';
import 'package:task_app/domain/models/task.dart';
import 'package:task_app/ui/screens/tasks_screen/components/components.dart';


class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listTasks = List.generate(
      50,
      (_) => TaskModel(
        date: DateTime.now(),
        task: "Complette app",
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleTasks(),
            const SizedBox(height: 20),
            const SearchTasks(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CounterTasks(),
                FilterTasks(),
              ],
            ),
            const SizedBox(height: 30),
            ListTasks(listTasks: listTasks)
          ],
        ),
      ),
    );
  }
}
