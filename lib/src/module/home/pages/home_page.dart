import 'dart:async';

import 'package:allpay/src/constant/app_setting.dart';

import 'package:allpay/src/module/home/widgets/custom_button_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      page: homeController.currentPage.value,
      quary: '',
    );
    homeController.getSlide();
    homeController.getFavorite(12, 6);
    timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (index < homeController.slideList.length) {
        index++;
      } else {
        index = 0;
      }

      pageControllers.animateToPage(
        index,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInSine,
      );
    });
    super.initState();
  }

  final homeController = Get.put(HomeController());
  PageController pageControllers = PageController(initialPage: 0);
  int index = 0;
  Timer? timer;

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
                    context.push('/home-router/search-router');
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
                    page: homeController.currentPage.value,
                    quary: '',
                  );
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
                                        debugPrint(
                                            '==========>${e.value.id}&${e.value.name}');
                                        homeController.pageCategory.value = 0;
                                        homeController.getCategoryById(
                                            page: homeController
                                                .pageCategory.value,
                                            id: e.value.id);
                                        context.push(
                                          '/home-router/category/${e.value.id}',
                                        );
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
                          homeController.currentPage.value = 0;
                          homeController.getProduct(
                            page: homeController.currentPage.value,
                            quary: '',
                          );
                          context.push('/home-router/popular-router');
                        }),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
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
                                onTap: () {
                                  context.push(
                                    '/home-router/detail/${e.value.id}',
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
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Container(
                                      height: 130,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amber,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(homeController
                                                  .slideList[index].imageUrl!
                                                  .contains('iamge')
                                              ? 'https://img.freepik.com/free-vector/sale-banner-with-product-description_1361-1333.jpg?w=996&t=st=1687254162~exp=1687254762~hmac=d883bcc295299e3609a748fd730e012e4dbe17225486f4947839f2da0526bcf7'
                                              : homeController
                                                  .slideList[index].imageUrl!),
                                        ),
                                      )),
                                );
                              },
                            ),
                          ),
                          homeController.slideList.length <= 1
                              ? Container()
                              : Positioned(
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
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
