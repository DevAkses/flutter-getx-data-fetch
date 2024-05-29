import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Text("data")
    );
  }
}
