import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_product_cart.dart';

class PopularPage extends StatelessWidget {
  PopularPage({super.key});
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Page"),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Obx(
        () => homeController.isLoadingPro.value &&
                homeController.currentPage.value == 0
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.red,
              ))
            : NotificationListener<ScrollUpdateNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification.metrics.pixels ==
                      scrollNotification.metrics.maxScrollExtent) {
                    debugPrint("is working scrool");
                    if (homeController.currentPage.value <=
                        homeController.totalPage.value) {
                      homeController.getProduct(
                        page: homeController.currentPage.value,
                        quary: '',
                      );
                    } else {
                      // debugPrint(
                      //     "========>>>> not page : Emport${getIt<PropertyListingController>().totalProperty.value}");
                    }
                  }
                  return false;
                },
                child: RefreshIndicator(
                  onRefresh: () async {
                    homeController.currentPage.value = 0;
                    homeController.totalPage.value = 1;
                    await homeController.getProduct(
                      page: homeController.currentPage.value,
                      quary: '',
                    );
                  },
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 20),
                      child: Column(
                        children: [
                          GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 240,
                                      childAspectRatio: 0.75,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 20),
                              itemCount: homeController.productList.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return CustomProductCart(
                                 
                                  title: homeController.productList[index].name,
                                  image: homeController
                                      .productList[index].thumbnailUrl,
                                  price:
                                      homeController.productList[index].price,
                                  //isFav: homeController.productList[index].isFav,

                                  onTap: () {
                                    context.push(
                                        '/home-router/detail/${homeController.productList[index].id}');
                                  },
                                  // onFav: () {
                                  //   homeController.detailsModelList[index].isFav =
                                  //       !homeController.detailsModelList[index].isFav!;
                                  //   if (homeController.detailsModelList[index].isFav!) {
                                  //     homeController.favCartList
                                  //         .add(homeController.detailsModelList[index]);
                                  //   } else {
                                  //     homeController.favCartList.removeAt(index);
                                  //     homeController.update();
                                  //   }
                                  //   homeController.update();
                                  // },
                                );
                              }),
                          if (homeController.isLoadingPro.value &&
                              homeController.currentPage.value > 0)
                            const Center(
                              child: CupertinoActivityIndicator(
                                  color: Colors.red,
                                  animating: true,
                                  radius: 9.5),
                            ),
                          const SizedBox(height: 50.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
