import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/professional_perfil/controllers/professional_perfil_controller.dart';

class ProfessionalPerfilView extends GetView<ProfessionalPerfilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfessionalPerfilView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfessionalPerfilView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  