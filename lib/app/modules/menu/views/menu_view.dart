import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanino_x/app/modules/menu/controllers/menu_controller.dart';
import 'package:tanino_x/app/routes/app_pages.dart';

class MenuView extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final controller = Get.put(MenuController());
    return Container(
      height: ScreenUtil().screenHeightPx - ScreenUtil().statusBarHeight,
      width: ScreenUtil().screenWidth * .8,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.cyan,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://i0.wp.com/portalovertube.com/wp-content/uploads/2018/12/Rodrigo-Hilbert.jpg',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rodrigão",
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sair",
                      style: GoogleFonts.roboto(color: Colors.cyan),
                    ),
                    
                  ],
                )
              ],
            ),
          ),
          Obx(() => Column(
                children: [
                  menuItem(
                      controller.page.value == 1 ? true : false, "Home", 1, navegation: ()=> Get.toNamed(Routes.HOME)),
                  menuItem(
                      controller.page.value == 2 ? true : false, "Profissionais", 2, navegation: ()=> Get.toNamed(Routes.PROFESSIONALS)),
                  menuItem(
                      controller.page.value == 3 ? true : false, "Fidalidade", 3, navegation: ()=> Get.toNamed(Routes.FIDELITY)),
                  menuItem(
                      controller.page.value == 4 ? true : false, "Contato", 4, navegation: ()=> Get.toNamed(Routes.CONTACT)),
                  menuItem(
                      controller.page.value == 5 ? true : false, "Serviços", 5, navegation: ()=> Get.toNamed(Routes.SERVICES)),
                ],
              ))
        ],
      ),
    );
  }

  Widget menuItem(bool active, String title, int numberPage, {Function navegation}) {
    return InkWell(
      onTap: () {
        controller.navegar(numberPage);
        navegation();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.all(10),
        height: 60,
        decoration: active
            ? BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15))
            : BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.cyan)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Icon(
                Icons.home,
                size: 28,
                color: active ? Colors.grey : Colors.cyan,
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.roboto(
                    color: active ? Colors.black : Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
