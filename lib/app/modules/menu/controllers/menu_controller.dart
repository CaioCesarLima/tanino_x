import 'package:get/get.dart';

class MenuController extends GetxController {
  //TODO: Implement MenuController
  
  final page = 2.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void navegar(int pagedestiny){
    page.value = pagedestiny;
    print(page.value);
  }
}
