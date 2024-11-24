import 'package:objectbox/objectbox.dart';
import 'package:task_app/domain/models/category.dart';

@Entity()
class TaskModel {
  int id = 0;
  DateTime? date;
  String task;
  bool complete = false;

  final category = ToOne<CategoryModel>();

  TaskModel({this.date, required this.task});
}
