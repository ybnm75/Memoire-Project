// ignore_for_file: file_names

import 'package:firebase_1/src/commen_widgets/fade_in_animation/modalFadeInAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fade_in-animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    Key? key,
    required this.durationInMs,
    required this.child,
    this.animate,


  }) : super(key: key);
  final controller = Get.put(FadeInAnimation());
  final int durationInMs;
  final ModalFdeInAnimation? animate;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          AnimatedPositioned(
            duration: Duration(milliseconds: durationInMs),
            top: controller.animate.value ? animate!.topAfter : animate!
                .topBefore,
            left: controller.animate.value ? animate!.leftAfter : animate!
                .leftBefore,
            bottom: controller.animate.value ? animate!.bottomAfter : animate!
                .bottomBefore,
            right: controller.animate.value ? animate!.rightAfter : animate!
                .rightBefore,
            child: child,
            // child:
          ),
    );
  }
}