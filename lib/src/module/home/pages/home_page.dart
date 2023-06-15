import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/home/pages/search_screen.dart';

import 'package:allpay/src/module/home/widgets/custom_button_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../profile/page/notification_page.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_product_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
  
    homeController.getCategory();
    homeController.getProduct(
        page: homeController.currentPage.value, quary: '');
    super.initState();
  }

  var homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svg/Highlight_05.svg'),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
              Expanded(
                child: Text(
                  'Explore',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: Colors.black, fontSize: 32),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchScreen();
                    }));
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                    weight: 24,
                  )),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return const MyCardPage();
              //     }));
              //   },
              //   child: Container(
              //     height: 24,
              //     width: 24,
              //     decoration: const BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: AppColor.textDarkColor,
              //     ),
              //     child: Image.asset(
              //       'assets/png/bag-2.png',
              //       color: AppColor.darkColor,
              //     ),
              //   ),
              // ),
              // const SizedBox(width: 15),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NotificationPage();
                    }));
                  },
                  child: SvgPicture.asset("assets/svg/Notif_Black.svg")),
              const SizedBox(width: 15),
            ],
          ),
        ),
        elevation: 0,
      ),
      //====================================> Body <==================================================
      body: Obx(
        () => homeController.isLoadingPro.value &&
                homeController.currentPage.value == 0
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.red,
              ))
            : RefreshIndicator(
                onRefresh: () async {
                  homeController.currentPage.value = 0;
                  await homeController.getProduct(
                      page: homeController.currentPage.value, quary: '');
                },
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //=======================================>Select Category<===============================================
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: customTitle(context, title: 'Select Category'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                              children: homeController.categoryList
                                  .asMap()
                                  .entries
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: customCartCategory(context,
                                          title: e.value.name, onTap: () {
                                        homeController.indexCategory.value =
                                            e.key;

                                        homeController.update();
                                      },
                                          isSelected: homeController
                                                  .indexCategory.value ==
                                              e.key),
                                    ),
                                  )
                                  .toList()),
                        ),
                      ),
                      //=======================================>Popular Shoes<===============================================
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: customTitle(context,
                            title: 'Popular Shoes', isSeeAll: true, onTap: () {
                          context.push('/home-router/popular-router');
                        }),
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 210,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 10,
                                  mainAxisExtent: 230),
                          itemCount: homeController.productList.length >= 2
                              ? 2
                              : homeController.productList.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: CustomProductCart(
                                title: homeController.productList[index].name,
                                image: homeController
                                    .productList[index].thumbnailUrl,
                                price: homeController.productList[index].price,
                                onTap: () {
                                  context.push(
                                    '/home-router/detail/${homeController.productList[index].id}',
                                  );
                                },
                                // onFav: () {
                                //   // homeController.detailsModelList[index].isFav =
                                //   //     !homeController.detailsModelList[index].isFav!;
                                //   // if (homeController.detailsModelList[index].isFav!) {
                                //   //   homeController.favCartList
                                //   //       .add(homeController.detailsModelList[index]);
                                //   // } else {
                                //   //   homeController.favCartList.removeAt(index);
                                //   //   homeController.update();
                                //   // }
                                //   // homeController.update();
                                // },
                                // onAdd: () {
                                //   // Navigator.push(context,
                                //   //     MaterialPageRoute(builder: (context) {
                                //   //   return Container();
                                //   // }));
                                // },
                              ),
                            );
                          }),

                      //=======================================> New Arrivals Slide<===============================================
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: customTitle(
                          context,
                          title: 'New Arrivals',
                          isSeeAll: true,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Container();
                            }));
                          },
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                      //   child: customSlide(context),
                      // ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
