import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_login/login_page.dart';
import 'package:flutter_firebase_login/welcome_page.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get
      .find(); //static instance so that it can be accessed throughout the app
  late Rx<User?> _user; //email password name
  FirebaseAuth auth = FirebaseAuth.instance; //access properties of firebase

  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser); //user initialization
    _user.bindStream(auth
        .userChanges()); //bind user to stream user notified of any change in the app like login logout
    ever(_user, _intitialScreen); //listener and callaback function
  }

  _intitialScreen(User? user) {
    if (user == null) {
      //if no user has logged in
      print("login page");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => WelcomePage()); //if user has logged in
    }
  }
}
