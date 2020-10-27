import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/specialties/controllers/specialties_controller.dart';

class SpecialtiesView extends GetView<SpecialtiesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpecialtiesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SpecialtiesView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  