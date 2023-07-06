import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../controllers/home_controller.dart';
import '../models/product/big_product_model.dart';
import '../widgets/custom_product_cart.dart';

class SelectCategoryPage extends StatefulWidget {
  final int? id;
  final String? name;
  const SelectCategoryPage({super.key, this.id, this.name});

  @override
  State<SelectCategoryPage> createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  final homeController = Get.put(HomeController());
  BigProductModel categoryProductModels = BigProductModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('${widget.name}'),
      ),
      body: Obx(
        () => homeController.isLoadingCategory.value &&
                homeController.pageCategory.value == 0
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.red,
              ))
            : homeController.categoryProductList.isNotEmpty
                ? GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 20, bottom: 20),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 240,
                            childAspectRatio: 0.75,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20),
                    itemCount: homeController.categoryProductList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return CustomProductCart(
                        title: homeController.categoryProductList[index].name,
                        image: homeController
                            .categoryProductList[index].thumbnailUrl,
                        price: homeController.categoryProductList[index].price,
                        //isFav: homeController.productList[index].isFav,

                        onTap: () {
                          context.push(
                              '/home-router/detail/${homeController.categoryProductList[index].id}');
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
                    })
                : Center(
                    child: Text(
                      "No List Products Found!",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                  ),
      ),
    );
  }
}
