import 'package:get/get.dart';

import 'package:tanino_x/app/modules/professionals/controllers/professionals_controller.dart';

class ProfessionalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfessionalsController>(
      () => ProfessionalsController(),
    );
  }
}
