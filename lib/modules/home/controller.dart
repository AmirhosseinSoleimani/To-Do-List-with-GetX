import 'package:get/get.dart';
import 'package:task_manager_with_getx/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({
    required this.taskRepository,
  });

}