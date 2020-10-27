import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanino_x/app/modules/services/controllers/services_controller.dart';

class ServicesView extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Serviços'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
        return itemListService();
      }),
    );
  }

  Widget itemListService() {
    return Container(
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
                      fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
          Icon(Icons.navigate_next,
          color: Colors.cyan,
          size: 40,
          )
        ],
      ),
    );
  }
}
