import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_manager_with_getx/data/services/storage/repository.dart';
import '../../data/models/task.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({
    required this.taskRepository,
  });

  final formKey = GlobalKey<FormState>();
  final editCtrl = TextEditingController();
  final chipIndex = 0.obs;
  final deleting = false.obs;
  final tasks = <Task>[].obs;
  final task = Rx<Task?>(null);

  @override
  void onInit(){
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }

  @override
  void onClose(){
    editCtrl.dispose();
    super.onClose();
  }

  void changeChipIndex(int value){
    chipIndex.value = value;
  }

  void changeDeleting(bool value){
    deleting.value = value;
  }

  void changeTask(Task? select){
    task.value = select;
  }

  bool addTask(Task task){
    if(tasks.contains(task)){
      return false;
    }
    tasks.add(task);
    return true;
  }

  void deleteTask(Task task){
    tasks.remove(task);
  }

  updateTask(Task task, String title){
    var todos = task.taskList ?? [];
    if(containTodo(todos, title)) {
      return false;
    }
    var todo = {'title': title, 'done': false};
    todos.add(todo);
    var newTask = task.copyWith(taskList: todos);
    int oldIndex = tasks.indexOf(task);
    tasks[oldIndex] = newTask;
    tasks.refresh();
    return true;
  }
  bool containTodo(List todo,String title){
    return todo.any((element) => element['title'] == title);
  }
}