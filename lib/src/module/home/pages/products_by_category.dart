import 'package:allpay/src/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../controllers/home_controller.dart';
import '../models/product/big_product_model.dart';
import '../widgets/custom_product_cart.dart';

class ProductsByCategoryPage extends StatefulWidget {
  final int? id;
  final String? name;
  const ProductsByCategoryPage({super.key, this.id, this.name});

  @override
  State<ProductsByCategoryPage> createState() => _ProductsByCategoryPageState();
}

class _ProductsByCategoryPageState extends State<ProductsByCategoryPage> {
  final homeController = Get.put(HomeController());
  BigProductModel categoryProductModels = BigProductModel();
  @override
  void initState() {
    homeController.getProductsListByCategoryId(
        page: homeController.productListByCategoryIdPage.value, id: widget.id);
    super.initState();
  }

  getdata() {
    homeController.productListByCategoryIdPage(0);
    if (widget.name!.toLowerCase() == 'all') {
      homeController.getProduct(
          page: homeController.productListByCategoryIdPage.value);
    } else {
      homeController.getProductsListByCategoryId(
          page: homeController.productListByCategoryIdPage.value, id: 0);
    }
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
                homeController.productListByCategoryIdPage.value == 0
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : homeController.categoryProductList.isNotEmpty
                ? RefreshIndicator(
                    onRefresh: () async {
                      //TODO: Handle Refresh
                    },
                    child: GridView.builder(
                        padding: EdgeInsets.all(Sizes.defaultPadding),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 157 / 201,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemCount: homeController.categoryProductList.length,
                        itemBuilder: (_, index) {
                          return CustomProductCart(
                            title:
                                homeController.categoryProductList[index].name,
                            image: homeController
                                .categoryProductList[index].thumbnailUrl,
                            price:
                                homeController.categoryProductList[index].price,

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
                        }),
                  )
                : emptyWidget(),
      ),
    );
  }

  Widget emptyWidget() {
    return Center(
      child: Text(
        "No Products",
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
      ),
    );
  }
}
