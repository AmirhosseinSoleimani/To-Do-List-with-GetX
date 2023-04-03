import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_with_getx/core/utils/extension.dart';
import 'package:task_manager_with_getx/modules/home/controller.dart';
import 'package:task_manager_with_getx/modules/home/widgets/icons.dart';
import 'package:dotted_border/dotted_border.dart';

class AddCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icons = getIcons();
    var squaredWidth = Get.width - 12.0.wp;
    return Container(
      width: squaredWidth / 2,
      height: squaredWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () async{
          await Get.defaultDialog(
            titlePadding: EdgeInsets.symmetric(vertical: 5.0.wp),
            radius: 5,
            title: 'Task Type'
          );
        },
        child: DottedBorder(
          color: Colors.grey[400]!,
          dashPattern: const [8, 4],
          child: Center(
            child: Icon(
                Icons.add,
                size: 10.0.wp,
                color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
