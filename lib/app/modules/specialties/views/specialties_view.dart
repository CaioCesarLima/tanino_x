import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanino_x/app/modules/specialties/controllers/specialties_controller.dart';

class SpecialtiesView extends GetView<SpecialtiesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Especialidade'),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                "Título da Especilidade",
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      child: Text(
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing 
elit. Morbi sit amet metus scelerisque, lacinia nisi sit 
amet, consequat odio. Cras sed ex magna. Nulla 
hendrerit velit ac dolor placerat, nec aliquam augue 
suscipit. Mauris sed tristique felis. Maecenas ex 
metus, finibus eu blandit eu, gravida vel purus. Ut 
nulla ex, ornare in vehicula vitae, congue vitae nunc. 
Aliquam erat volutpat. Praesent nec iaculis erat, 
facilisis maximus tellus. Class aptent taciti 
sociosqu ad litora torquent per conubia nostra, per 
inceptos himenaeos. Aenean congue massa tempor 
urna tempor, cursus porta ipsum blandit. Phasellus 
efficitur rhoncus ex, sit amet commodo lectus 
gravida in. Maecenas eget maximus nisi, ut volutpat 
mi.''',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Workshop Show de Bola",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "26/04/1994",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
