// ignore_for_file: iterable_contains_unrelated_type

import 'dart:math';

import 'package:allpay/src/module/favourite/controller/favourite_controller.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/module/home/models/product_details/product_details_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/app_setting.dart';
import '../../../util/alert_snackbar.dart';
import '../../../widget/custom_description_widget.dart';
import '../../../widget/home/custom_buttons.dart';
import '../../../widget/home/custom_cart_details.dart';

extension GetItemInList<T> on List<T> {
  T? itemAt(int index) =>
      isNotEmpty == true && index < length ? this[index] : null;
}

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.id});

  final int id;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
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

  final detailCon = Get.put(HomeController());
  final favouriteController = Get.put(FavouriteController());

  late AnimationController _animationController;
  ProductDetailsModel productDetailsModel = ProductDetailsModel();

  Future<void> fetch() async {
    try {
      await detailCon.getProductDetails(widget.id).then((value) {
        productDetailsModel = value;
      });
    } catch (e) {
      debugPrint('heeeeeh=====>$e');
    }
  }

  @override
  void dispose() {
    super.dispose();
    detailCon.selectedColorIndex(0);
    detailCon.selectedSizeIndex(-1);
  }

  @override
  Widget build(BuildContext context) {
    //========================================> Stack text description <==========================================
    return Obx(
      () => detailCon.isLoadingDetails.value
          ?

          ///Loading
          Container(
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
                title: const Text("Detail Screen"),
                actions: [
                  GestureDetector(
                    onTap: () async {
                      final isFav = productDetailsModel.isFavorite == true;
                      if (isFav) {
                        await favouriteController
                            .removeFavourite(productDetailsModel.id!);
                        showInfoSnackBar(
                            message: 'Product removed from your Favourites.');
                      } else {
                        await favouriteController
                            .addToFavourite(productDetailsModel.id!);
                        showInfoSnackBar(
                            message: 'Product saved to your Favourites.',
                            action: SnackBarAction(
                              label: 'View',
                              onPressed: () {
                                context.go('/favorite-router');
                              },
                            ));
                      }

                      setState(() {
                        productDetailsModel =
                            productDetailsModel.copyWith(isFavorite: !isFav);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.disableColor,
                      ),
                      child: SvgPicture.asset(
                          productDetailsModel.isFavorite == true
                              ? 'assets/svg/fav_filled.svg'
                              : 'assets/svg/unfav.svg'),
                    ),
                  )
                ],
              ),
              //======================================> NestedScrollView PageView Image <==========================================
              body: Column(
                children: [
                  Expanded(
                    child: NestedScrollView(
                      headerSliverBuilder: (_, innerBoxIsScrolled) {
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
                                      image: productDetailsModel
                                                  .variants?.isNotEmpty ==
                                              true
                                          ? DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                productDetailsModel
                                                    .variants![detailCon
                                                        .selectedColorIndex
                                                        .value]
                                                    .imageUrl!,
                                              ),
                                            )
                                          : DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                productDetailsModel
                                                        .thumbnailUrl ??
                                                    '',
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ];
                      },
                      //======================================> details in white container <======================================
                      body: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(8)),
                        ),
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                productDetailsModel.name ?? '',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    fontFamily: 'Raleway-Bold'),
                                textAlign: TextAlign.center,
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "4.8",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontSize: 14,
                                            fontFamily: 'poppins-regular',
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "(1120 reviews)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontSize: 14,
                                            fontFamily: 'poppins-regular',
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgray,
                                          ),
                                    ),
                                  ],
                                ),
                              ),

                              DescriptionWidget(
                                  description:
                                      productDetailsModel.description!),

                              const SizedBox(height: 20),
                              const Text(
                                'Select Color:',
                                style: TextStyle(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15),

                              ///
                              if (productDetailsModel.variants?.isNotEmpty ==
                                  true)
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: productDetailsModel.variants!
                                        .asMap()
                                        .entries
                                        .map((e) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: CustomCartDetails(
                                          image: e.value.imageUrl,
                                          // price: e.value.price,
                                          selected: detailCon
                                                  .selectedColorIndex.value ==
                                              e.key,
                                          onTap: () {
                                            if (detailCon
                                                    .selectedColorIndex.value !=
                                                e.key) {
                                              detailCon.selectedSizeIndex(-1);
                                            }
                                            detailCon.selectedColorIndex.value =
                                                e.key;
                                          },
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              const SizedBox(height: 20),

                              const Text(
                                'Select Size:',
                                style: TextStyle(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: 0.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15),

                              productDetailsModel
                                              .variants?[detailCon
                                                  .selectedColorIndex.value]
                                              .sizes !=
                                          null &&
                                      productDetailsModel
                                              .variants?[detailCon
                                                  .selectedColorIndex.value]
                                              .sizes
                                              ?.isNotEmpty ==
                                          true
                                  ? SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: productDetailsModel
                                                .variants?[detailCon
                                                    .selectedColorIndex.value]
                                                .sizes
                                                ?.asMap()
                                                .entries
                                                .map(
                                                  (e) => GestureDetector(
                                                    onTap: () {
                                                      detailCon
                                                          .selectedSizeIndex(
                                                              e.key);
                                                    },
                                                    child: Container(
                                                      constraints:
                                                          const BoxConstraints(
                                                              minWidth: 40,
                                                              minHeight: 40),
                                                      // padding: const EdgeInsets.all(10),
                                                      margin:
                                                          const EdgeInsets.only(
                                                        right: 10,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color: e.key ==
                                                                detailCon
                                                                    .selectedSizeIndex
                                                                    .value
                                                            ? AppColor
                                                                .primaryColor
                                                            : AppColor
                                                                .backgroundColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                      ),
                                                      child: Text(
                                                        e.value.sizeText
                                                            .toString(),
                                                        style: TextStyle(
                                                          color: e.key ==
                                                                  detailCon
                                                                      .selectedSizeIndex
                                                                      .value
                                                              ? AppColor
                                                                  .textDarkColor
                                                              : AppColor
                                                                  .textLightColor,
                                                          fontWeight: e.key ==
                                                                  detailCon
                                                                      .selectedSizeIndex
                                                                      .value
                                                              ? FontWeight.w700
                                                              : FontWeight.w500,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'poppins-regular',
                                                          // letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList() ??
                                            [],
                                      ),
                                    )
                                  : const Text('No stock available'),
                              const SizedBox(height: 20),
                              const Text(
                                'Reviews',
                                style: TextStyle(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 15),

                              SizedBox(
                                // decoration: BoxDecoration(
                                //   color: AppColor.backgroundColor,
                                //   borderRadius: BorderRadius.circular(8),
                                // ),
                                // padding: const EdgeInsets.all(20),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...List.generate(5, (index) {
                                      final rate = Random().nextInt(6);
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const CircleAvatar(
                                                  backgroundColor:
                                                      AppColor.backgroundColor,
                                                  // radius: 15,
                                                  child: Icon(
                                                    Icons.person_rounded,
                                                    size: 25,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'User ${String.fromCharCode(65 + index)}',
                                                          style:
                                                              const TextStyle(
                                                            color: AppColor
                                                                .textLightColor,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            // fontFamily:
                                                            //     'poppins-regular',
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            ...List.generate(
                                                              5,
                                                              (index) => Icon(
                                                                Icons.star,
                                                                color: index < rate
                                                                    ? Colors
                                                                        .yellow
                                                                    : Colors
                                                                        .grey,
                                                                size: 12,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 5),
                                                            Text(
                                                              rate
                                                                  .toDouble()
                                                                  .toString(),
                                                              style:
                                                                  const TextStyle(
                                                                color: AppColor
                                                                    .textLightColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontFamily:
                                                                    'poppins-regular',
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            DescriptionWidget(
                                              description:
                                                  'I really love this product.' *
                                                      (index + 1),
                                              // trimCollapsedText: ' Read More',
                                              // trimExpandedText: ' Read Less',
                                            )
                                          ],
                                        ),
                                      );
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ColoredBox(
                    color: Colors.white,
                    child: SafeArea(
                      minimum: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'Price',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'poppins-regular',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '\$${productDetailsModel.variants?.itemAt(detailCon.selectedColorIndex.value)?.sizes?.itemAt(0)?.price ?? 0}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: 'poppins-regular',
                                    letterSpacing: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: CustomButtons(
                              image: 'assets/png/bag-2.png',
                              title: 'Add to Cart',
                              onTap: () {
                                if (detailCon.selectedSizeIndex.value >= 0) {
                                  final productId =
                                      productDetailsModel.id.toString();
                                  final selectedColoredProduct =
                                      productDetailsModel.variants?.itemAt(
                                          detailCon.selectedColorIndex.value);

                                  final variantId =
                                      selectedColoredProduct?.id.toString();
                                  final sizeId = productDetailsModel
                                      .variants?[
                                          detailCon.selectedColorIndex.value]
                                      .sizes?[detailCon.selectedSizeIndex.value]
                                      .toString();
                                  final price = productDetailsModel
                                      .variants?[
                                          detailCon.selectedColorIndex.value]
                                      .sizes?[detailCon.selectedSizeIndex.value]
                                      .toString();

                                  // detailCon.addToCart(
                                  //     productId: productId,
                                  //     variantId: variantId,
                                  //     sizeId: sizeId,
                                  //     price: price,
                                  // qty: 1);
                                } else {
                                  showInfoSnackBar(
                                      message: 'Please select a size.');
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //=========================================> BottomNavigation Button details===============================
            ),
    );
  }

  /* void selectSize() async {
    final sizes =
        productDetailsModel.variants?[detailCon.currentIndex.value].sizes;
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Material(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(maxHeight: context.height * 0.7),
          decoration: const BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Select Size',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: sizes != null && sizes.isNotEmpty
                    ? ListView.separated(
                        itemBuilder: (_, index) {
                          final size = sizes[index];
                          final sizeText = size.sizeText;

                          return InkWell(
                            onTap: () {},
                            child: Ink(
                              width: double.infinity,
                              // dense: true,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),

                              child: Row(
                                children: [
                                  const Spacer(),
                                  Expanded(
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        size.sizeText.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(
                                              fontSize: 18,
                                              fontFamily: 'poppins-regular',
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.darkColor,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      size.qty != null && size.qty! <= 5
                                          ? '(2 lefts)'
                                          : '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            fontSize: 12,
                                            fontFamily: 'poppins-regular',
                                            fontWeight: FontWeight.w300,
                                            color: AppColor.darkColor,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => const SizedBox.shrink(),
                        itemCount: sizes.length,
                      )
                    : const Center(
                        child: Text('No stock available'),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
*/
}
