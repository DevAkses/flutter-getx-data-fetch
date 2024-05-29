import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put<ProfileController>(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'ProfileView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => controller.keluar(), child: const Text("Logout"))
        ],
      ),
    );
  }
}
