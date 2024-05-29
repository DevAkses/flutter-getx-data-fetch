import 'package:animation_dev/app/modules/product/models/product.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductController extends GetxController {
  var product = <Product>[].obs;
  var isLoading = true.obs;

  final String baseUrl = "https://dummyjson.com/carts/1";

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<void> fetchData() async {
    isLoading(true);
    try {
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final data = json.decode(response.body)['products'];
        final List<dynamic> products = data;
        product.value = products.map((product) => Product.fromJson(product)).toList();
      } else {
        if (kDebugMode) {
          print('Failed to load data');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
    } finally {
      isLoading(false);
    }
  }
}
