import 'package:flutter/material.dart';
import 'package:flutter_firebase_login/login_page.dart';
import 'package:flutter_firebase_login/signup_page.dart';
import 'package:flutter_firebase_login/welcome_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter firebase login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //home: LoginPage(),
      home: LoginPage(),
    );
  }
}
