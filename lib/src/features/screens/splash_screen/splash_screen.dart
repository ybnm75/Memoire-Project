import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commen_widgets/fade_in_animation/animationDesign.dart';
import '../../../commen_widgets/fade_in_animation/fade_in-animation_controller.dart';
import '../../../commen_widgets/fade_in_animation/modalFadeInAnimation.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(FadeInAnimation());
    controller.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen[200],
          ),
          child: Stack(
            children: [
              TFadeInAnimation(
                durationInMs: 1600,
                animate: ModalFdeInAnimation(
                  topAfter: 0,
                  topBefore: -30,
                  leftAfter: 0,
                  leftBefore: -30,
                ),
                child: const Image(
                  width: 50.0,
                  image: AssetImage(
                    "assets/images/splash_images/splash1.png",
                  ),
                ),
              ),
              TFadeInAnimation(
                durationInMs: 2000,
                animate: ModalFdeInAnimation(
                  topBefore: 80.0,
                  topAfter: 80.0,
                  leftAfter: 20.0,
                  leftBefore: -80.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      "Proteger Votre environnement",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Nous somme tous responsable !",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              TFadeInAnimation(
                durationInMs: 2400,
                animate: ModalFdeInAnimation(
                  bottomBefore: 0,bottomAfter: 100,
                ),
                child: Image(
                  alignment: AlignmentDirectional.center,
                  height: size.height * 0.3,
                  width: size.width * 0.9,
                  image: const AssetImage("assets/images/splash_images/recycle2.jpg"),
                ),
              ),
              TFadeInAnimation(durationInMs:2400,
                    animate: ModalFdeInAnimation(bottomBefore: 0,bottomAfter: 60,rightBefore: 20.0,rightAfter: 20.0),
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),]
                ),
        ),
            ),
    );
  }
}