import 'package:flutter/material.dart';
import 'modules/home/view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Task Manager using GetX',
      home: HomePage(),
    );
  }
}