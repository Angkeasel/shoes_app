import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_product_cart.dart';


class PopularPage extends StatelessWidget {
   PopularPage({super.key});
final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text("Popular Page"),
        elevation: 0,
      ),
      body: GetBuilder(init: homeController, builder: (_) => 
         GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 210,
                        childAspectRatio: 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 230),
                    itemCount: homeController.detailsModelList.length,
                    itemBuilder: (BuildContext ctx, index) {
                   
                      return Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 15, right: 15),
                        child: 
                        CustomProductCart(
                          title: homeController.detailsModelList[index].title,
                          image: homeController
                              .detailsModelList[index].images?[0].gallary,
                          price: homeController.detailsModelList[index].price,
                          isFav: homeController.detailsModelList[index].isFav,
                           
                          onTap: () {
                            context.push('/home-router/detail',extra: homeController.detailsModelList[index]);
                         
                          },
                          onFav: () {
                            homeController.detailsModelList[index].isFav =
                                !homeController.detailsModelList[index].isFav!;
                            if (homeController.detailsModelList[index].isFav!) {
                              homeController.favCartList
                                  .add(homeController.detailsModelList[index]);
                            } else {
                              homeController.favCartList.removeAt(index);
                              homeController.update();
                            }
                            homeController.update();
                          },
                        ),
                      );
                    }),
      ),
    );
  }
}