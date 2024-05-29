import 'package:animation_dev/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  void keluar() {
    Get.offAllNamed(Routes.HOME);
  }
}
