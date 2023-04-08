import 'package:firebase_1/src/features/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../sign_up/sign_up.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen[200],
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage("assets/images/welcome_images/recycle.png"),
            ),
            Column(children: [
              const Text(
                "Welcome To NADIF:",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.center,
              ),
              Text("Our Envirennment, Our Responsability",
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: TextAlign.center),
            ]),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                    onPressed: () {
                      Get.to(() => const LoginScreen());
                    },
                    child: Text("Login".toUpperCase()),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.black),
                  onPressed: () {
                    Get.to(() => const SignUp());},
                        child: Text("Sign Up".toUpperCase())
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
