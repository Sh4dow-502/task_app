import 'package:objectbox/objectbox.dart';
import 'package:task_app/domain/models/category_model.dart';

@Entity()
class TaskModel {
  int id = 0;
  String name;
  DateTime? date;
  bool complete = false;

  final category = ToOne<CategoryModel>();

  TaskModel({required this.name, this.date});
}
