import 'package:allpay/src/module/favourite/controller/favourite_controller.dart';
import 'package:allpay/src/module/favourite/widgets/custom_fav_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../constant/app_setting.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(FavouriteController());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Favourite',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.black,
              ),
        ),
        elevation: 0,
      ),
      body: GetBuilder(
        init: homeController,
        initState: (_) {
          homeController.getFavouritsList();
        },
        builder: (_) => Obx(
          () => homeController.fetchFavListLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : homeController.favouriteList.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.favorite_border_rounded,
                            size: 26,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Empty Favourite List",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "You haven't saved any favourite yet, Let's add to your.",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 20, bottom: 20),
                      shrinkWrap: true,
                      itemCount: homeController.favouriteList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 159 / 203,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (_, index) {
                        final product = homeController.favouriteList[index];

                        return CustomFavoriteCard(
                          onTap: () {
                            context.push(
                              '/favorite-router/detail/${product.id}',
                            );
                          },
                          title: product.name,
                          image: product.thumbnailUrl,
                          price: product.price,
                          //isFav: homeController.favList[index].is,
                          onFav: () {},
                        );
                      },
                    ),
        ),
      ),
    );
  }
}
