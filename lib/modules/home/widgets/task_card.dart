import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_with_getx/core/values/colors.dart';
import 'package:task_manager_with_getx/modules/home/controller.dart';
import '../../../data/models/task.dart';
import '../../../core/utils/extension.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


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
      decoration: const BoxDecoration(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StepProgressIndicator(
              // TODO change after finish
              totalSteps: 100,
              currentStep: 80,
              size: 5,
              padding: 0,
              selectedGradientColor: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ColorManager.blue.withOpacity(0.5), ColorManager.blue],
              ),
            unselectedGradientColor: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6.0.wp),
            child: Icon(
                IconData(task.icon,fontFamily: 'MaterialIcons'),color: ColorManager.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6.0.wp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2.0.wp,
                ),
                Text(
                    '${task.taskList?.length ?? 0} Task',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
