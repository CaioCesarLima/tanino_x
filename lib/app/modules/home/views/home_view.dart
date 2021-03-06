import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/home/controllers/home_controller.dart';
import 'package:tanino_x/app/modules/menu/views/menu_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      drawer: MenuView(),
      body: Center(
        child: Text(
          'HomeView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  