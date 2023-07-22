import 'package:allpay/src/module/favourite/controller/favourite_controller.dart';
import 'package:allpay/src/module/favourite/widgets/custom_fav_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      child: Text(
                        'Empty',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Colors.black),
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 20, bottom: 20),
                      shrinkWrap: true,
                      itemCount: homeController.favouriteList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 240,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20),
                      itemBuilder: (_, index) {
                        final product = homeController.favouriteList[index];
                        return CustomFavoriteCard(
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
