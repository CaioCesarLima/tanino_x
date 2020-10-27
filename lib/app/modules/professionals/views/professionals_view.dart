import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/professionals/controllers/professionals_controller.dart';

class ProfessionalsView extends GetView<ProfessionalsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfessionalsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfessionalsView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  