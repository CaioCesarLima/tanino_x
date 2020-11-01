import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanino_x/app/modules/menu/views/menu_view.dart';
import 'package:tanino_x/app/modules/professional_perfil/controllers/professional_perfil_controller.dart';
import 'package:tanino_x/app/routes/app_pages.dart';

class ProfessionalPerfilView extends GetView<ProfessionalPerfilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Profissional'),
          centerTitle: true,
        ),
        drawer: MenuView(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                "Nome do Profssional",
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            CircleAvatar(
              radius: 83,
              backgroundColor: Colors.black,
              child: Hero(
                tag: 'Caio 1',
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    'https://i0.wp.com/portalovertube.com/wp-content/uploads/2018/12/Rodrigo-Hilbert.jpg',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Especialidades",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return itemListProfissionalSpeciality();
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget itemListProfissionalSpeciality() {
    return InkWell(
      onTap: ()=> Get.toNamed(Routes.SPECIALTIES),
          child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: Icon(
                Icons.settings_remote,
                size: 30,
                color: Colors.cyan,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Corte Máquina",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.cyan,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
