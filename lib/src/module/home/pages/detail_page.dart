// ignore_for_file: iterable_contains_unrelated_type

import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/module/home/models/product_details/product_details_model.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/app_setting.dart';
import '../../../widget/home/custom_buttons.dart';
import '../../../widget/home/custom_cart_details.dart';
import '../widgets/custom_favorite.dart';

class DetailPage extends StatefulWidget {
  final int id;
  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  final detailCon = Get.put(HomeController());
  int maxLines = 2;
  double height = 0;
  double heightFull = 0;

  late AnimationController _animationController;
  ProductDetailsModel productDetailsModel = ProductDetailsModel();

  @override
  void initState() {
    // detailCon.currentIndex.value = 0;
    // // detailCon.eachPrice.value = widget.detailModel!.images![0].eachPrice!;
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animationController.forward();
    fetch();

    super.initState();
  }

  Future<void> fetch() async {
    try {
      await detailCon.getProductDetails(widget.id).then((value) {
        productDetailsModel = value;
        debugPrint('==============>123 productDetailsModel$value');
      });
    } catch (e) {
      debugPrint('heeeeeh=====>$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    //========================================> Stack text description <==========================================
    return Obx(
      () => detailCon.isLoadingDetails.value
          ? Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColor.backgroundColor),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  title: const Text("Details Screen")
                  //  Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const ,
                  //     GestureDetector(
                  //       onTap: () {
                  //         debugPrint('cart');
                  //         context.push('/mycard-router');
                  //       },
                  //       child: Container(
                  //         height: 35,
                  //         width: 35,
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 10, vertical: 10),
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(8),
                  //             color: const Color(0xffBFB5AB).withOpacity(0.5)),
                  //         child: Image.asset(
                  //           "assets/image/Cart Icon.png",
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  ),
              //======================================> NestedScrollView PageView Image <==========================================
              body: NestedScrollView(
                headerSliverBuilder: ((context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.transparent,
                      expandedHeight: context.height * 0.35,
                      flexibleSpace: FlexibleSpaceBar(
                          background: AnimatedBuilder(
                        animation: _animationController,
                        builder: (_, __) => Transform.scale(
                          scale: _animationController.value * 0.8,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(detailCon
                                            .imageStock.value ==
                                        'image'
                                    ? 'https://www.maxairsoft.com/getimage/products/default.png'
                                    : detailCon.imageStock.value),
                              ),
                            ),
                          ),
                        ),
                      )

                          // PageView(
                          //   controller: pageController,
                          //   onPageChanged: (value) {
                          //     // myAnimationController.reset();

                          //     detailCon.currentIndex.value = value;
                          //     // detailCon.eachPrice.value = widget.detailModel!
                          //     //     .images![detailCon.currentIndex.value].eachPrice!;
                          //   },
                          //   children: productDetailsModel.variants!
                          //       .asMap()
                          //       .entries
                          //       .map((e) {
                          //     return AnimatedBuilder(
                          //         animation: myAnimationController,
                          //         builder: (context, widget) => Transform.scale(
                          //               scale: myAnimationController.value * 0.8,
                          //               child: widget,
                          //             ),
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //               image: DecorationImage(
                          //                   image: AssetImage(e.value.imageUrl!),
                          //                   fit: BoxFit.contain)),
                          //         ));
                          //   }).toList(),
                          // ),
                          ),
                    ),
                  ];
                }),
                //======================================> details in white container <======================================
                body: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productDetailsModel.name ?? '',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Text(
                          "\$${detailCon.eachPrice.value}",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontFamily: 'poppins-regular', fontSize: 24),
                        ),

                        //=================================================>Stock Available <=======================================================
                        Text("Stock Available : ${detailCon.stockValue.value} ",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff707B81),
                                )),
                        SizedBox(
                          height:
                              productDetailsModel.variants!.isNotEmpty ? 20 : 5,
                        ),
                        //=================================================>Variants Listing <=======================================================
                        if (productDetailsModel.variants!.isNotEmpty)
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: productDetailsModel.variants!
                                  .asMap()
                                  .entries
                                  .map((e) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: CustomCartDetails(
                                    image: e.value.imageUrl,
                                    price: e.value.price,
                                    selected:
                                        detailCon.currentIndex.value == e.key,
                                    onTap: () {
                                      detailCon.stockValue.value =
                                          e.value.quantity!;
                                      detailCon.currentIndex.value = e.key;
                                      detailCon.eachPrice.value =
                                          e.value.price!;
                                      detailCon.imageStock.value =
                                          e.value.imageUrl!;

                                      //detailModel!.size = e.value.sized;
                                      // slideCon.animateToPage(e.key);
                                      // pageController.animateToPage(e.key,
                                      //     duration:
                                      //         const Duration(milliseconds: 500),
                                      //     curve: Curves.ease);
                                      detailCon.update();
                                      debugPrint('=======> onTap Cart List ');
                                    },
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        SizedBox(
                          height:
                              productDetailsModel.variants!.isNotEmpty ? 20 : 5,
                        ),

                        //======================================================> Sized Shoes <==========================================

                        // Text(
                        //   ' Shoe Size',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .titleMedium!
                        //       .copyWith(fontWeight: FontWeight.w700),
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        /////////////////noted sized
                        // Row(
                        //   children: widget.detailModel!
                        //       .images![detailCon.currentIndex.value].sized!
                        //       .asMap()
                        //       .entries
                        //       .map((e) {
                        //     return Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: CustomCartSize(
                        //         sized: e.value.sized ?? '',
                        //         isSelected:
                        //             detailCon.isSelectedIndex.value == e.key,
                        //         onTap: () {
                        //           detailCon.isSelectedIndex.value = e.key;
                        //         },
                        //       ),
                        //     );
                        //   }).toList(),
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        //=========================================>Text description <======================================
                        if (productDetailsModel.description != null &&
                            productDetailsModel.description != '')
                          Text(
                            "Description",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          productDetailsModel.description!.replaceAll('\n', ''),
                          maxLines: maxLines,
                          overflow:
                              heightFull > height || detailCon.isOverFlow.value
                                  ? TextOverflow.ellipsis
                                  : null,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'poppins-regular',
                                    color: const Color(0xff707B81),
                                  ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        if (productDetailsModel.description != null &&
                            productDetailsModel.description != '')
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  detailCon.isOverFlow.value =
                                      !detailCon.isOverFlow.value;
                                  if (maxLines == 2) {
                                    maxLines = 100;
                                  } else {
                                    maxLines = 2;
                                  }
                                },
                                child: heightFull > height
                                    ? Text(
                                        detailCon.isOverFlow.value
                                            ? 'See Less'
                                            : 'See More',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                                color: AppColor.primaryColor,
                                                fontFamily: 'poppins-regular',
                                                fontWeight: FontWeight.w400),
                                      )
                                    : Container()),
                          ),
                      ],
                    ),
                  ),
                ),
              ),

              //=========================================> BottomNavigation Button details===============================

              bottomNavigationBar: Container(
                height: 100,
                color: Colors.white,
                child: SafeArea(
                  minimum: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              detailCon.delFavorite(productDetailsModel.id!);
                              //TODO: Add Favourite
                            },
                            child: const CustomFavitore(
                              isWithOpacity: false,
                              isFavorite: true,
                              selectIcon: 'assets/png/like.png',
                              unSelectIcon: 'assets/png/unlike.png',
                              backGroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: CustomButtons(
                            image: 'assets/png/bag-2.png',
                            title: 'Add to Cart',
                            onTap: () {
                              //TODO: Add to Card
                            },
                          ),
                        ),
                      ]),
                ),
              ),
            ),
    );
  }
}
