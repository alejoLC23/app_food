import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_backgroundCover(context), _boxForm(context), _imageUser(), _buttonBack(context)],
      ),
    );
  }
}

Widget _buttonBack(BuildContext context) {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.only(top: 20, left: 10),
      child: FloatingActionButton.small(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
        backgroundColor: Colors.white,
        onPressed: () => Get.back(),
        child: const Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 30,
        color: Colors.orangeAccent
        ),
        ),
    )
  );
}

Widget _backgroundCover(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.35,
    color: Colors.orangeAccent,
  );
}

Widget _boxForm(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.62,
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.30, left: 50, right: 48),
    decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(1, 4))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: SingleChildScrollView(
      child: Column(children: [
        _textYourInfo(),
        _textFieldEmail(),
        _textFieldName(),
        _textFieldLastName(),
        _textFieldPhone(),
        _textFieldPassword(),
        _textFieldConfirmPassword(),
        _buttonRegister()
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

Widget _textFieldName() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration:
          InputDecoration(hintText: 'Nombre', prefixIcon: Icon(Icons.person)),
    ),
  );
}

Widget _textFieldLastName() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Apellido', prefixIcon: Icon(Icons.person_outline)),
    ),
  );
}

Widget _textFieldPhone() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Telefóno', prefixIcon: Icon(Icons.phone_android)),
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

Widget _textFieldConfirmPassword() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: const TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Confirmar Contraseña',
          prefixIcon: Icon(Icons.lock_outline)),
    ),
  );
}

Widget _buttonRegister() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12)),
        child: const Text(
          'REGISTRAR',
          style: TextStyle(color: Colors.black),
        )),
  );
}

Widget _imageUser() {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.only(top: 60),
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: () {},
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/img/user_profile.png'),
          radius: 50,
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}

Widget _textYourInfo() {
  return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 40),
      child: const Text(
        'INGRESA ESTA INFORMACION',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ));
}
