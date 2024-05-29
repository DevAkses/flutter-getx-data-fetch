import 'package:animation_dev/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final emailController = TextEditingController(text: "devaksesmikail@gmail.com");
  final passwordController = TextEditingController(text: "dev123");
  var isLoading = false.obs;

  void masuk() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 3));

    if (email == 'devaksesmikail@gmail.com' && password == 'dev123') {
      Get.snackbar(
        'Berhasil',
        'Anda berhasil login!', 
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      await Future.delayed(const Duration(seconds: 3));
      Get.offAllNamed(Routes.HOMEPAGE);
    } else {
      Get.snackbar(
        'Error',
        'Email atau password salah!',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    isLoading.value = false;
  }
}
