import 'package:get/get.dart';
import 'package:animation_dev/app/modules/beranda/views/beranda_view.dart';
import 'package:animation_dev/app/modules/product/views/product_view.dart';
import 'package:animation_dev/app/modules/profile/views/profile_view.dart';

class HomepageController extends GetxController {
  var selectedIndex = 0.obs;

  final views = [
    const BerandaView(),
    const ProductView(),
    const ProfileView(),
  ];
}
