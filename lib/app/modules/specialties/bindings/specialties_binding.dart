import 'package:get/get.dart';

import 'package:tanino_x/app/modules/specialties/controllers/specialties_controller.dart';

class SpecialtiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialtiesController>(
      () => SpecialtiesController(),
    );
  }
}
