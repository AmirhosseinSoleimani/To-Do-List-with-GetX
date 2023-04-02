import 'package:get/get.dart';
import 'package:task_manager_with_getx/data/providers/task/provider.dart';
import 'package:task_manager_with_getx/data/services/storage/repository.dart';
import 'controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
      )
    ));
  }

}