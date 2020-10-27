import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:tanino_x/app/modules/signup/controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
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
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Nome',
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
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Usuário',
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
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
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
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.white,
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
            onTap: (){
              
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .8,
              child: Center(
                child: Text(
                  "Cadastrar",
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
                Get.back();
              },
              child: Text(
                "Já tenho conta",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ],
      ),
    );
  }
}
  