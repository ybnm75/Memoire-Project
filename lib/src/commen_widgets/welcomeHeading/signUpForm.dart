// ignore_for_file: file_names

import 'package:firebase_1/src/features/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                  hintText: "Full Name",
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  hintText: "Gmail",
                  labelText: "Gmail",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  hintText: "Phone number",
                  labelText: "Phone number",
                  prefixIcon: Icon(Icons.phone_android),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.fingerprint),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.cached_rounded),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
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
                    if(_formKey.currentState!.validate()) {
                      controller.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    }
                  },
                  child: Text("Sign Up".toUpperCase()),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
