import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_with_getx/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('Home Page'),
      ),
    );
  }
}
