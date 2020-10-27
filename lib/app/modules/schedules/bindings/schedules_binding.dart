import 'package:get/get.dart';

import 'package:tanino_x/app/modules/schedules/controllers/schedules_controller.dart';

class SchedulesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchedulesController>(
      () => SchedulesController(),
    );
  }
}
