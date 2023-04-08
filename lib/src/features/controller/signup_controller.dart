import 'package:firebase_1/src/repository/Authentification_repository/authentification_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController{
  static SignUpController get instance =>  Get.find();

  final email = TextEditingController();
  final fullName = TextEditingController();
  final password = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email,String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);

  }


}