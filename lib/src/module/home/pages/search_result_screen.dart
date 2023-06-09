import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/custom_product_cart.dart';

class SearchResultScreen extends StatelessWidget {
  SearchResultScreen({super.key});
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 210,
                childAspectRatio: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                mainAxisExtent: 230),
            itemCount: homeController.searchList.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomProductCart(
                title: homeController.searchList[index].name,
                image: homeController.searchList[index].thumbnailUrl,
                price: homeController.searchList[index].price,
              );
            }));
  }
}
