// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../features/typeOfUsers/typeOfUsers.dart';

class FadeInAnimation extends GetxController{
  static FadeInAnimation get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 600),
    );
      animate.value = true;
    await Future.delayed(
      const Duration(milliseconds: 7000),
    );
    Get.to(() => const TypeOfUsersScreen());
  }

}