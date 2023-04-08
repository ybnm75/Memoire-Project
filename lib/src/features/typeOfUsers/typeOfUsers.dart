import 'package:firebase_1/src/features/screens/welcome_screen/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeOfUsersScreen extends StatelessWidget {
  const TypeOfUsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen[200],
        ),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/welcome_images/welcome.png",
                height: height * 0.4),
            const Text(
              "Continue en Tant Qu'un :",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const WelcomeScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.recycling,
                      size: 100.0,
                    ),
                    Text('Fournisseur'.toUpperCase(),
                        style:
                        const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const WelcomeScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.car_rental,
                      size: 100.0,
                    ),
                    Text('Chauffeur'.toUpperCase(),
                        style:
                        const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const WelcomeScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     const Icon(
                      Icons.money,
                      size: 100.0,
                    ),
                    Text('Achteur'.toUpperCase(),
                        style:
                        const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
