import 'package:get/get.dart';

import '../modules/beranda/bindings/beranda_binding.dart';
import '../modules/beranda/views/beranda_view.dart';
import '../modules/detail_product/bindings/detail_product_binding.dart';
import '../modules/detail_product/views/detail_product_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => const DetailProductView(),
      binding: DetailProductBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BERANDA,
      page: () => const BerandaView(),
      binding: BerandaBinding(),
    ),
  ];
}
