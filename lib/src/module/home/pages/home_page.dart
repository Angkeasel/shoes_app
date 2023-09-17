import 'dart:async';

import 'package:allpay/src/constant/app_setting.dart';

import 'package:allpay/src/module/home/widgets/custom_button_category.dart';
import 'package:allpay/src/module/profile/controller/profile_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    homeController.currentPage.value = 0;
    homeController.getCategory();
    homeController.getProduct(
      page: homeController.currentPage.value,
      query: '',
    );
    homeController.getSlide();

    super.initState();
  }

  Future<void> _refresh() async {
    homeController.currentPage.value = 0;
    await homeController.getCategory();
    await homeController.getProduct(
      page: homeController.currentPage.value,
      query: '',
    );
    await homeController.getSlide();
  }

  final profileCon = Get.put(ProfileController());
  final homeController = Get.put(HomeController());
  PageController pageControllers = PageController(initialPage: 0);
  int index = 0;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   LocalStorage.storeData(key: 'access_token', value: '');
      //   LocalStorage.storeData(key: 'first_time_open', value: false);
      // }),
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset('assets/svg/homepage-logo.svg'),
        elevation: 0,
      ),
      //====================================> Body <==================================================
      body: Obx(
        () => homeController.loadingFetchAllProduct.value &&
                homeController.currentPage.value == 0
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.red,
              ))
            : RefreshIndicator(
                onRefresh: _refresh,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///Search
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 10, bottom: 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  context.push('/go-search');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(14),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(.04),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/search_icon.svg'),
                                      const SizedBox(width: 30),
                                      const Text(
                                        'Looking for shoes',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppColor.appbarColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.tune_rounded))
                          ],
                        ),
                      ),

                      ///=======================================>Select Category<===============================================
                      const SizedBox(height: 20),
                      if (homeController.categoryList.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: customTitle(context, title: 'Select Category'),
                        ),
                      const SizedBox(height: 20),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: homeController.categoryList
                              .asMap()
                              .entries
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: CustomCategoryCard(
                                    title: e.value.name,
                                    onTap: () {
                                      context.push(
                                        '/category?id=${e.value.id}&name=${e.value.name}',
                                      );
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),

                      //=======================================>Popular Shoes<===============================================
                      const SizedBox(
                        height: 20,
                      ),
                      if (homeController.productList.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: customTitle(context,
                              title: 'Popular Shoes',
                              isSeeAll: true, onTap: () {
                            homeController.currentPage.value = 0;
                            homeController.getProduct(
                              page: homeController.currentPage.value,
                              query: '',
                            );
                            context.push('/popular-router');
                          }),
                        ),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: homeController.productList
                              .asMap()
                              .entries
                              .map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 5,
                                top: 15,
                              ),
                              child: CustomProductCart(
                                title: e.value.name,
                                image: e.value.thumbnailUrl,
                                price: e.value.price,
                                // isFav: e.value.,
                                onTap: () {
                                  context.push(
                                    '/detail/${e.value.id}',
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
                          }).toList(),
                        ),
                      ),

                      //=======================================> New Arrivals Slide<===============================================
                      if (homeController.slideList.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: customTitle(
                            context,
                            title: 'New Arrivals',
                            isSeeAll: true,
                            onTap: () {
                              //TODO : goto New Arrival Page
                            },
                          ),
                        ),

                      ///Slides
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 170,
                            child: PageView.builder(
                              controller: pageControllers,
                              onPageChanged: (e) {
                                setState(() {
                                  index = e;
                                });
                              },
                              itemCount: homeController.slideList.length,
                              itemBuilder: (_, index) {
                                final image =
                                    homeController.slideList[index].imageUrl;
                                return Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.amber,
                                      image: image != null
                                          ? DecorationImage(
                                              fit: BoxFit.cover,
                                              image: CachedNetworkImageProvider(
                                                  image),
                                            )
                                          : null,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          if (homeController.slideList.length > 1)
                            Positioned(
                              bottom: 30,
                              child: SmoothPageIndicator(
                                controller: pageControllers,
                                count: homeController.slideList.length,
                                effect: const ExpandingDotsEffect(
                                    dotWidth: 8,
                                    dotHeight: 8,
                                    dotColor: Colors.amber,
                                    activeDotColor: Colors.white),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
