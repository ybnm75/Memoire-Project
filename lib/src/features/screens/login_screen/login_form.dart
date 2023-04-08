// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
class LoginForm extends StatelessWidget {
   LoginForm({
    Key? key,
  }) : super(key: key);
  String? _email;
  String? _password;

  final signUpController = Get.put(SignUpController());


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "E-mail",
                labelText: "E-mail",
                prefixIcon: Icon(Icons.person_outline_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.fingerprint),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0,),
            Align(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forget Password ?"),
                )),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  side: const BorderSide(color: Colors.black),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                },
                child: Text("Login".toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}