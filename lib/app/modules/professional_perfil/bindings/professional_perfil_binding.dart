import 'package:get/get.dart';

import 'package:tanino_x/app/modules/professional_perfil/controllers/professional_perfil_controller.dart';

class ProfessionalPerfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfessionalPerfilController>(
      () => ProfessionalPerfilController(),
    );
  }
}
