import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_with_getx/modules/home/controller.dart';
import '../../../data/models/task.dart';
import '../../../core/utils/extension.dart';

class TaskCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  final Task task;
  TaskCard({Key? key,required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = HexColor.fromHex(task.color);
    var squareWidth = Get.width - 12.0.wp;
    return Container(
      width: squareWidth / 2,
      height:  squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
            offset: Offset(0,7),
          )
        ]
      ),
      child: Column(
      ),
    );
  }
}
