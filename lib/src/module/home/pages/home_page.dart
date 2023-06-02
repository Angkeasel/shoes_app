import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/module/home/pages/all_shoes.dart';
import 'package:allpay/src/module/home/pages/ourdoor.dart';
import 'package:allpay/src/module/home/pages/tennis.dart';
import 'package:allpay/src/module/home/widgets/custom_button_category.dart';
import 'package:allpay/src/module/my_card/screen/my_card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../profile/page/notification_page.dart';
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
    super.initState();
  }

  final homeController = Get.put(HomeController());

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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyCardPage();
                  }));
                },
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.textDarkColor,
                  ),
                  child: Image.asset(
                    'assets/png/bag-2.png',
                    color: AppColor.darkColor,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
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
      body: GetBuilder(
        init: homeController,
        builder: (_) => SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                  title: e.value.namecategory, onTap: () {
                                homeController.indexCategory.value = e.key;
                                if (e.value.namecategory == 'All Shoes') {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const AllShoesPage();
                                  }));
                                } else if (e.value.namecategory == 'Ourdoor') {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const OurDoorPage();
                                  }));
                                } else {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const TennisPage();
                                  }));
                                }

                                homeController.update();
                              },
                                  isSelected:
                                      homeController.indexCategory.value ==
                                          e.key),
                            ),
                          )
                          .toList()),
                ),
              ),

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
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, top: 20),
              //   child: GridView(
              //       physics: const NeverScrollableScrollPhysics(),
              //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 2,
              //           crossAxisSpacing: 10,
              //           childAspectRatio: 1),
              //       shrinkWrap: true,
              //       children: homeController.popularList
              //           .asMap()
              //           .entries
              //           .map(
              //             (e) => customCard(
              //               context,
              //               // image: e.value.image,
              //               // title: e.value.title,
              //               // price: e.value.price,
              //             ),
              //           )
              //           .toList()),
              // ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 210,
                      childAspectRatio: 1,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 230),
                  itemCount: 2,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: CustomProductCart(
                        title: homeController.detailsModelList[index].title,
                        image: homeController
                            .detailsModelList[index].images?[0].gallary,
                        price: homeController.detailsModelList[index].price,
                        isFav: homeController.detailsModelList[index].isFav,
                        onTap: () {
                          context.push('/home-router/detail',
                              extra: homeController.detailsModelList[index]);
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
                        onAdd: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Container();
                          }));
                        },
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: customTitle(
                  context,
                  title: 'New Arrivals',
                  isSeeAll: true,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: customSlide(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
