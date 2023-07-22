// ignore_for_file: iterable_contains_unrelated_type

import 'package:allpay/src/module/favourite/controller/favourite_controller.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/module/home/models/product_details/product_details_model.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../constant/app_setting.dart';
import '../../../widget/custom_description_widget.dart';
import '../../../widget/home/custom_buttons.dart';
import '../../../widget/home/custom_cart_details.dart';

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
    detailCon.currentIndex(0);
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
                                                        .currentIndex.value]
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
                              const SizedBox(height: 2),

                              Text(
                                "Men Shoes",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const SizedBox(height: 10),

                              const Text(
                                '\$135.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontFamily: 'poppins-regular',
                                  letterSpacing: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),

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
                                        padding: const EdgeInsets.only(
                                            right: 16, top: 20, bottom: 20),
                                        child: CustomCartDetails(
                                          image: e.value.imageUrl,
                                          // price: e.value.price,
                                          selected:
                                              detailCon.currentIndex.value ==
                                                  e.key,
                                          onTap: () {
                                            debugPrint("Clicked");
                                            detailCon.currentIndex.value =
                                                e.key;
                                            // detailCon.stockValue.value =
                                            //     e.value.quantity!;
                                            // detailCon.currentIndex.value = e.key;
                                            // detailCon.eachPrice.value =
                                            //     e.value.price!;
                                            // detailCon.imageStock.value =
                                            //     e.value.imageUrl!;

                                            // detailCon.update();
                                          },
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              // const Row(
                              //   children: [
                              //     Text(
                              //       'Size : ',
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontWeight: FontWeight.w500,
                              //         fontSize: 16,
                              //         fontFamily: 'Raleway-Bold',
                              //       ),
                              //     ),
                              //     Spacer(),
                              //     Icon(Icons.keyboard_arrow_down_rounded)
                              //   ],
                              // ),

                              //=================================================>Stock Available <=======================================================
                              // Text(
                              //   "Stock Available : ${productDetailsModel.variants![detailCon.currentIndex.value].quantity} ",
                              //   style:
                              //       Theme.of(context).textTheme.titleSmall!.copyWith(
                              //             fontWeight: FontWeight.w600,
                              //             color: const Color(0xff707B81),
                              //           ),
                              // ),

                              //=========================================>Text description <======================================
                              // if (productDetailsModel.description != null &&
                              //     productDetailsModel.description != '')
                              //   Text(
                              //     "Description",
                              //     style: Theme.of(context)
                              //         .textTheme
                              //         .titleMedium!
                              //         .copyWith(
                              //           fontWeight: FontWeight.w600,
                              //         ),
                              //   ),

                              if (productDetailsModel.description != null &&
                                  productDetailsModel.description?.isNotEmpty ==
                                      true)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: DescriptionWidget(
                                      description:
                                          productDetailsModel.description!),
                                ),

                              // Text.rich(
                              //   WidgetSpan(
                              //     child:
                              //       // children: const [
                              //       // TextSpan(
                              //       //   text: detailCon.isOverFlow.value
                              //       //       ? ' See Less'
                              //       //       : ' See More',
                              //       //   style: Theme.of(context)
                              //       //       .textTheme
                              //       //       .titleSmall!
                              //       //       .copyWith(
                              //       //           color: AppColor.primaryColor,
                              //       //           fontFamily: 'poppins-regular',
                              //       //           fontWeight: FontWeight.w400),
                              //       //   recognizer: TapGestureRecognizer()
                              //       //     ..onTap = () {
                              //       //       showless = !showless;
                              //       //       setState(() {});
                              //       //     },
                              //       // )
                              //       // ],
                              //     ),
                              //   ),
                              //   // softWrap: false,

                              //   // overflow: !showless ? TextOverflow.ellipsis : null,
                              //   style:
                              //       Theme.of(context).textTheme.titleSmall!.copyWith(
                              //             fontWeight: FontWeight.w400,
                              //             fontFamily: 'poppins-regular',
                              //             color: const Color(0xff707B81),
                              //           ),
                              // ),
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
                            flex: 3,
                            child: CustomButtons(
                              image: 'assets/png/bag-2.png',
                              title: 'Add to Cart',
                              onTap: () {
                                // FirebaseMessaging.instance
                                //     .getToken()
                                //     .then((value) => print(value));
                                // NotificationHelper.showNotification(
                                //     title: 'Notificaiton',
                                //     body: "This is Tested Notification.");
                                selectSize();
                                //TODO: Add to Card
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final isFav =
                                  productDetailsModel.isFavorite == true;
                              if (isFav) {
                                await favouriteController
                                    .removeFavourite(productDetailsModel.id!);
                                showInfoSnackBar(
                                    'Product removed from your Favourites.');
                              } else {
                                await favouriteController
                                    .addToFavourite(productDetailsModel.id!);
                                showInfoSnackBar(
                                    'Product saved to your Favourites.');
                              }

                              setState(() {
                                productDetailsModel = productDetailsModel
                                    .copyWith(isFavorite: !isFav);
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 20),
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
                    ),
                  ),
                ],
              ),

              //=========================================> BottomNavigation Button details===============================
            ),
    );
  }

  void selectSize() async {
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
}
