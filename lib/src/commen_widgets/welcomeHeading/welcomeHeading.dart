import 'package:firebase_1/src/commen_widgets/form/form_widget.dart';
import 'package:flutter/material.dart';

import 'signUpForm.dart';

class WelcomeHeading extends StatelessWidget {
   const WelcomeHeading({
    Key? key,
    required this.welcomeText,
  }) : super(key: key);
  final String welcomeText;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image:
            const AssetImage("assets/images/welcome_images/recycle.png"),
            height: size.height * 0.2,
          ),
          Text(
            welcomeText,
            style: Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            "make it work,make it fast, make it proper!",
            style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SignUpF extends StatelessWidget {
  const SignUpF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const SignUpForm();
  }
}

class LoginF extends StatelessWidget {
  const LoginF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginForm();
  }
}

