import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../commen_widgets/welcomeHeading/welcomeHeading.dart';
import '../sign_up/sign_up.dart';
import 'alternative_login.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(),
            child: Column(
              children: [
                const WelcomeHeading(welcomeText: "Welcome Back",),
                const SizedBox(height: 30.0,),
                const LoginF(),
                const SizedBox(height: 30.0,),
                AlternativeLogin(signUpG: "Login with GOOGLE",haveAcc: "Don't have an Account? ",logIn: "Sign Up ",goTo: (){Get.to(() => const SignUp());}),
              ],
            ),

          ),
        ),
      ),
    );
  }
}

