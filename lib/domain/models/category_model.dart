import 'package:objectbox/objectbox.dart';
import 'package:task_app/domain/models/task_model.dart';

@Entity()
class CategoryModel {
  int id = 0;
  String name;

  @Backlink()
  final tasks = ToMany<TaskModel>();

  CategoryModel({required this.name});

  double percentTasks() {
    final tasksCompleted = tasks.where((task) => task.complete).length;
    return tasksCompleted / tasks.length;
  }
}
