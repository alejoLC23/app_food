import 'package:flutter/material.dart';
import 'package:foodyz/src/pages/login/login_page.dart';
import 'package:foodyz/src/pages/register/register_page.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodyz',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/register', page: () =>  const RegisterPage()),
        GetPage(name: '/', page: ()=>  LoginPage())
      ],
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.orangeAccent,
          onPrimary: Colors.grey,
          secondary: Colors.orangeAccent,
          error: Colors.grey,
          onError: Colors.grey,
          onBackground: Colors.grey,
          surface: Colors.grey,
          onSurface: Colors.grey,
          onSecondary: Colors.grey,
          background: Colors.grey)
      ),
      navigatorKey: Get.key,
    );
  }
}

