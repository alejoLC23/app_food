// ignore_for_file: unused_element, sized_box_for_whitespace, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:foodyz/src/pages/login/login_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          child: _textDontHaveAccount(),
        ),
        body: Stack(
          children: [
            _backgroundCover(context),
            _boxForm(context),
            Column(
              children: [
                _imageCover(),
                const SizedBox(
                  height: 10,
                ),
                _textAppName()
              ],
            )
          ],
        ));
  }
}

Widget _backgroundCover(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.4,
    color: Colors.orangeAccent,
  );
}

Widget _textAppName() {
  return const Text(
    'DARK BITS',
    style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontStyle: FontStyle.italic),
  );
}

Widget _boxForm(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.4,
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.33, left: 50, right: 50),
    decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(0, 0.75))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: SingleChildScrollView(
      child: Column(children: [
        _textYourInfo(),
        _textFieldEmail(),
        _textFieldPassword(),
        _buttonLogin()
      ]),
    ),
  );
}

Widget _textFieldEmail() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo electronico', prefixIcon: Icon(Icons.email)),
    ),
  );
}

Widget _textFieldPassword() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration:
          InputDecoration(hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
    ),
  );
}

Widget _buttonLogin() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12)),
        child: const Text(
          'LOGIN',
          style: TextStyle(color: Colors.black),
        )),
  );
}

Widget _textYourInfo() {
  return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 40),
      child: const Text(
        'INGRESA ESTA INFORMACION',
        style: TextStyle(color: Colors.black),
      ));
}

Widget _textDontHaveAccount() {
  LoginController con = Get.put(LoginController());
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'No tienes cuenta?',
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      const SizedBox(
        width: 7,
      ),
      GestureDetector(
        onTap: () => con.goToRegisterPage(),
        child: const Text('Registrate aquí',
            style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      )
    ],
  );
}

Widget _imageCover() {
  return SafeArea(
    child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 30),
        child: Image.asset(
          'assets/img/logo.png',
          width: 130,
          height: 90,
        )),
  );
}
