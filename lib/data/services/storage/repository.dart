import 'package:task_manager_with_getx/data/providers/task/provider.dart';
import '../../models/task.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask() => taskProvider.readTask();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);

}