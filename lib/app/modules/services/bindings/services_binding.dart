import 'package:get/get.dart';

import 'package:tanino_x/app/modules/services/controllers/services_controller.dart';

class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesController>(
      () => ServicesController(),
    );
  }
}
