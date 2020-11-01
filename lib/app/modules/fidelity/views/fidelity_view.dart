import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/fidelity/controllers/fidelity_controller.dart';
import 'package:tanino_x/app/modules/menu/views/menu_view.dart';

class FidelityView extends GetView<FidelityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FidelityView'),
        centerTitle: true,
      ),
      drawer: MenuView(),
      body: Center(
        child: Text(
          'FidelityView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  