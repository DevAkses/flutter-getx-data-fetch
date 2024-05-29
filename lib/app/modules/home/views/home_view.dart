import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        titleTextStyle:
            const TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Poppins', fontWeight: FontWeight.normal),
        title: const Text('LoginPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => AnimatedContainer(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: controller.isLoading.value ? Colors.blueAccent : Colors.white30,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              transform: Matrix4.rotationZ(controller.isLoading.value ? 0.2 : 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "LoginPage is working",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, style: BorderStyle.solid))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextField(
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, style: BorderStyle.solid),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => controller.masuk(),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all( const EdgeInsets.fromLTRB(125, 20, 125, 20)),
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                    child: controller.isLoading.value ? const CircularProgressIndicator(color: Colors.white,) : const Text("Login"),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}