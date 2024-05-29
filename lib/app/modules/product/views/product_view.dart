import 'package:animation_dev/app/modules/product/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});
  
  @override
  Widget build(BuildContext context) {
    Get.put<ProductController>(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductView'),
        centerTitle: true,
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.product.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            return ListView.builder(
              itemCount: controller.product.length,
              itemBuilder: (context, index) {
                final Product product = controller.product[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Get.to(DetailProductView(product: product));
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              product.thumbnail,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
