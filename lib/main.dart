import 'package:flutter/material.dart';
import 'package:task_manager_with_getx/data/services/storage/services.dart';
import 'package:task_manager_with_getx/modules/home/binding.dart';
import 'modules/home/view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


void main() async{
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Manager using GetX',
      home: const HomePage(),
      initialBinding: HomeBinding(),
    );
  }
}