import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/login/controllers/login_controller.dart';
import 'package:tanino_x/app/routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image(
                      image: AssetImage('assets/img/logo.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
              _formLogin(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _formLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              style: TextStyle(
                  color: Colors.black, decoration: TextDecoration.none),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.redAccent,
                  hintText: 'Senha',
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              style: TextStyle(
                  color: Colors.black, decoration: TextDecoration.none),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          // RaisedButton(
          //     onPressed: () {},
          //     color: Colors.cyan,
          //     child: Container(
          //       child: Text(
          //         "Acessar",
          //         style: TextStyle(color: Colors.white, fontSize: 18),
          //       ),
          //       decoration:
          //           BoxDecoration(borderRadius: BorderRadius.circular(30)),
          //     )),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.SIGNUP, );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .8,
              child: Center(
                child: Text(
                  "Acessar",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login/register');
              },
              child: Text(
                "Cadastrar",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ],
      ),
    );
  }
}
  