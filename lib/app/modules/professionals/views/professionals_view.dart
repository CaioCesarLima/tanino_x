import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanino_x/app/modules/menu/views/menu_view.dart';
import 'package:tanino_x/app/modules/professionals/controllers/professionals_controller.dart';
import 'package:tanino_x/app/routes/app_pages.dart';

class ProfessionalsView extends GetView<ProfessionalsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Profissionais'),
          centerTitle: true,
        ),
        drawer: MenuView(),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return itemProfessionalList(index);
            }));
  }

  Widget itemProfessionalList(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.PROFESSIONAL_PERFIL, arguments: index + 1);
        },
        child: Container(
          height: 150,
          padding: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.cyan,
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 51,
                  backgroundColor: Colors.cyan,
                  child: Hero(
                    tag: "caio $index",
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://i0.wp.com/portalovertube.com/wp-content/uploads/2018/12/Rodrigo-Hilbert.jpg'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nome do Profissional",
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Profissão",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Colors.cyan,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
