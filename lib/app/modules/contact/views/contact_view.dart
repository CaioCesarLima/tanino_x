import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanino_x/app/modules/contact/controllers/contact_controller.dart';
import 'package:tanino_x/app/modules/menu/views/menu_view.dart';

class ContactView extends GetView<ContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Contato'),
          centerTitle: true,
        ),
        drawer: MenuView(),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 200,
                      child: Image(
                        image: AssetImage('assets/img/logo.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                        Icons.phone,
                        size: 30,
                        color: Colors.cyan,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("(51) 99999-9999",
                          style: GoogleFonts.roboto(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Container(
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
                        Icons.phone,
                        size: 30,
                        color: Colors.cyan,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("(51) 99999-9999",
                          style: GoogleFonts.roboto(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Container(
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
                        Icons.phone,
                        size: 30,
                        color: Colors.cyan,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("(51) 99999-9999",
                          style: GoogleFonts.roboto(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
