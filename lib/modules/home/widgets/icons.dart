import 'package:flutter/material.dart';
import 'package:task_manager_with_getx/core/values/icons.dart';
import '../../../core/values/colors.dart';

List<Icon> getIcons() {
  return [
    Icon(const IconData(IconManager.personIcon,fontFamily: 'MaterialIcons'),color: ColorManager.purple,),
    Icon(const IconData(IconManager.workIcon,fontFamily: 'MaterialIcons'),color: ColorManager.pink,),
    Icon(const IconData(IconManager.movieIcon,fontFamily: 'MaterialIcons'),color: ColorManager.green,),
    Icon(const IconData(IconManager.sportIcon,fontFamily: 'MaterialIcons'),color: ColorManager.yellow,),
    Icon(const IconData(IconManager.travelIcon,fontFamily: 'MaterialIcons'),color: ColorManager.deepPink,),
    Icon(const IconData(IconManager.shopIcon,fontFamily: 'MaterialIcons'),color: ColorManager.lightBlue,),
  ];
}