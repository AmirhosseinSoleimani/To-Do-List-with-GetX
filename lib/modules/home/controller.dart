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
  final tasks = <Task>[].obs;

  @override
  void onInit(){
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }

  @override
  void onClose(){
    super.onClose();
  }

  void changeChipIndex(int value){
    chipIndex.value = value;
  }

}