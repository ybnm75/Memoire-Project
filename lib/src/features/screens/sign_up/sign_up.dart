
import 'package:firebase_1/src/features/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../commen_widgets/welcomeHeading/welcomeHeading.dart';
import '../login_screen/alternative_login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const WelcomeHeading(welcomeText: "Welcome to NADIF",),
                const SignUpF(),
                const SizedBox(height: 10.0,),
                AlternativeLogin(signUpG: "SignUp with GOOGLE",haveAcc: "Already have an Account? ",logIn: "Login",goTo: (){Get.to(() =>  LoginScreen());},),


              ],
            ),
          ),
        )

      ),
    );
  }
}



