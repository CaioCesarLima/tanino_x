import 'package:get/get.dart';

import 'package:tanino_x/app/modules/fidelity/controllers/fidelity_controller.dart';

class FidelityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FidelityController>(
      () => FidelityController(),
    );
  }
}
