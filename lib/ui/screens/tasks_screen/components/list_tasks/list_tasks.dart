import 'package:flutter/material.dart';
import 'package:task_app/domain/models/task.dart';
import 'package:task_app/ui/widgets/task_box.dart';

class ListTasks extends StatefulWidget {
  final List<TaskModel> listTasks;
  const ListTasks({super.key, required this.listTasks});

  @override
  State<ListTasks> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final task = widget.listTasks[index];

          return TaskBox(
            task: task.task,
            complete: task.complete,
            date: task.date,
          );
        },
        itemCount: widget.listTasks.length,
      ),
    );
  }
}
