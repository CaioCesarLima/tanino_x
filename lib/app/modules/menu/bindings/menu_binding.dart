import 'package:get/get.dart';

import 'package:tanino_x/app/modules/menu/controllers/menu_controller.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(
      () => MenuController(),
    );
  }
}
