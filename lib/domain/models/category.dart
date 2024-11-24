//import 'package:task_app/domain/models/task.dart';
//import 'package:task_app/objectbox.g.dart';

import 'package:objectbox/objectbox.dart';
import 'package:task_app/domain/models/task.dart';

@Entity()
class CategoryModel {
  int id = 0;
  String name;

  @Backlink()
  final tasks = ToMany<TaskModel>();
  CategoryModel({
    required this.name,
  });

  double descPercent() {
    final tasksCompleted = tasks.where((task) => task.complete).length;
    final percentComplete = (tasksCompleted / tasks.length) * 10;
    return percentComplete;
  }
}
