import 'package:get_storage/get_storage.dart';
import 'package:task_manager_with_getx/core/utils/keys.dart';
import 'package:get/get.dart';

class StorageService extends GetxService{
  late GetStorage _box;
  Future<StorageService> init() async{
    _box = GetStorage();
    await _box.writeIfNull(taskKey, []);
    return this;
  }

}