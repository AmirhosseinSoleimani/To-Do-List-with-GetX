import 'dart:convert';
import 'package:task_manager_with_getx/core/utils/keys.dart';
import '../../models/task.dart';
import '../../services/storage/services.dart';
import 'package:get/get.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();


  List<Task> readTask(){
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString()).forEach(
            (e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }
  
  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}