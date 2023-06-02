// ignore_for_file: iterable_contains_unrelated_type

import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/module/home/models/detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../../widget/home/custom_buttons.dart';
import '../../../widget/home/custom_cart_details.dart';
import '../../../widget/home/custom_cart_size.dart';
import '../../my_card/screen/check_out_mycart.dart';
import '../widgets/custom_favorite.dart';

class DetailPage extends StatefulWidget {
  final DetailModel? detailModel;
  const DetailPage({
    super.key,
    this.detailModel,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  final detailCon = Get.put(HomeController());
  int maxLines = 2;
  double height = 0;
  double heightFull = 0;
  final textFullkey = GlobalKey();
  final textkey = GlobalKey();
  late AnimationController myAnimationController;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  void initState() {
    detailCon.currentIndex.value = 0;
    detailCon.eachPrice.value = widget.detailModel!.images![0].eachPrice!;
    myAnimationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    myAnimationController.forward();
    fetch();

    super.initState();
  }

  fetch() {
    widget.detailModel;
    try {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (widget.detailModel!.description != null) {
          RenderBox renderbox =
              textFullkey.currentContext!.findRenderObject() as RenderBox;
          RenderBox renderbox1 =
              textkey.currentContext!.findRenderObject() as RenderBox;

          setState(() {
            heightFull = renderbox.size.height;
            height = renderbox1.size.height;
          });

          debugPrint("full $heightFull");
          debugPrint("not $height");
        } else {
          debugPrint('==========> error');
        }
      });
    } catch (e) {
      debugPrint('heeeeeh=====>$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          key: textFullkey,
          '${widget.detailModel!.description}',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'poppins-regular',
              color: Colors.transparent),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            //color: Colors.indigo,
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 81, 79, 79).withOpacity(0.8),
                const Color(0xffE0E0E0),
                const Color(0xffE0E0E0),
                const Color(0xffE0E0E0),
                const Color(0xffE0E0E0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      debugPrint('arrow back');
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffBFB5AB).withOpacity(0.5),
                      ),
                      child: Image.asset(
                        "assets/image/arrow-back.png",
                      ),
                    ),
                  ),
                  const Text("Details Screen"),
                  GestureDetector(
                    onTap: () {
                      debugPrint('cart');
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffBFB5AB).withOpacity(0.5)),
                      child: Image.asset(
                        "assets/image/Cart Icon.png",
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [

              //     const Text('Details Screen'),
              //   ],
              // ),
            ),
            body: NestedScrollView(
              headerSliverBuilder: ((context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    expandedHeight: 300,
                    flexibleSpace: FlexibleSpaceBar(
                      // background: CarouselSlider(
                      //   carouselController: slideCon,
                      //   items: detailModel!.images!.asMap().entries.map((e) {
                      //     return Container(
                      //       decoration: BoxDecoration(
                      //           image: DecorationImage(
                      //               image: AssetImage(e.value.gallary!),
                      //               fit: BoxFit.contain)),
                      //     );
                      //   }).toList(),
                      //   options: CarouselOptions(
                      //     autoPlay: false,
                      //     height: 280,
                      //     autoPlayAnimationDuration:
                      //         const Duration(milliseconds: 800),
                      //     enlargeCenterPage: false,
                      //     enableInfiniteScroll: true,
                      //     viewportFraction: 1,
                      //     onPageChanged: (index, carousel) {
                      //       // detailModel!.price =
                      //       //     detailModel!.images![index].eachPrice;
                      // detailCon.currentIndex.value = index;
                      // slideCon.animateToPage(detailCon.currentIndex.value);
                      // detailModel!.price = detailModel!
                      //     .images![detailCon.currentIndex.value].eachPrice;
                      //     },
                      //   ),
                      // ),
                      background: PageView(
                        controller: pageController,
                        onPageChanged: (value) {
                          // myAnimationController.reset();

                          detailCon.currentIndex.value = value;
                          detailCon.eachPrice.value = widget.detailModel!
                              .images![detailCon.currentIndex.value].eachPrice!;
                        },
                        children: widget.detailModel!.images!
                            .asMap()
                            .entries
                            .map((e) {
                          return AnimatedBuilder(
                              animation: myAnimationController,
                              builder: (context, widget) => Transform.scale(
                                    scale: myAnimationController.value * 0.8,
                                    child: widget,
                                  ),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(e.value.gallary!),
                                        fit: BoxFit.contain)),
                              ));
                        }).toList(),
                      ),
                    ),
                  ),
                ];
              }),
              body: Obx(
                () => SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.detailModel!.title}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${widget.detailModel!.recordType}",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: const Color(0xff707B81)),
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
                                    fontFamily: 'poppins-regular',
                                    fontSize: 24),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: widget.detailModel!.images!
                                  .asMap()
                                  .entries
                                  .map((e) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: CustomCartDetails(
                                    image: e.value.gallary,
                                    price: e.value.eachPrice,
                                    // sized: e.value.sized,
                                    selected:
                                        detailCon.currentIndex.value == e.key,
                                    onTap: () {
                                      // debugPrint(
                                      //     'description=======${detailCon.detailsModelList[0].description!.length}');
                                      detailCon.currentIndex.value = e.key;
                                      detailCon.isSelectedIndex.value = 0;
                                      detailCon.eachPrice.value =
                                          e.value.eachPrice!;
                                      //detailModel!.size = e.value.sized;
                                      // slideCon.animateToPage(e.key);
                                      pageController.animateToPage(e.key,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease);
                                      detailCon.update();
                                      debugPrint('=======> onTap Cart List ');
                                    },
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            ' Shoe Size',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          /////////////////noted sized
                          Row(
                            children: widget.detailModel!
                                .images![detailCon.currentIndex.value].sized!
                                .asMap()
                                .entries
                                .map((e) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomCartSize(
                                  sized: e.value.sized ?? '',
                                  isSelected:
                                      detailCon.isSelectedIndex.value == e.key,
                                  onTap: () {
                                    detailCon.isSelectedIndex.value = e.key;
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            key: textkey,
                            "${widget.detailModel!.description}",
                            maxLines: maxLines,
                            overflow: heightFull > height ||
                                    detailCon.isOverFlow.value
                                ? TextOverflow.ellipsis
                                : null,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'poppins-regular',
                                  color: const Color(0xff707B81),
                                ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          if (widget.detailModel!.description != null &&
                              widget.detailModel!.description != '')
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
                                    child: Text(
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
                                    ))),

                          // const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Container(
             height: 100,
              color: Colors.white,
              padding: const EdgeInsets.only(top: 20, bottom: 30, left: 10),
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
            
                      // image: const DecorationImage(
                      //    scale: 2,
                      //     image: AssetImage('assets/png/unlike.png',)),
                    ),
                    child: GetBuilder(
                      init: detailCon,
                      builder: (_) => GestureDetector(
                        onTap: () {
                          widget.detailModel!.isFav =
                              !widget.detailModel!.isFav!;
            
                          int index = detailCon.detailsModelList.indexWhere(
                              (element) =>
                                  element.title == widget.detailModel!.title);
                          debugPrint('details fav.............$index');
                          if (widget.detailModel!.isFav!) {
                            detailCon.favCartList
                                .add(detailCon.detailsModelList[index]);
                          } else {
                            detailCon.favCartList.removeAt(index);
                          }
                          detailCon.update();
                        },
                        child: CustomFavitore(
                          isWithOpacity: false,
                          isFavorite: widget.detailModel!.isFav!,
                          selectIcon: 'assets/png/like.png',
                          unSelectIcon: 'assets/png/unlike.png',
                          backGroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                   CustomButtons(
                    width: MediaQuery.of(context).size.width*0.3,
                    title: 'Pay Now',
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const CheckOutMyCart();
                      }));
                    },
                    ),
                     const SizedBox(width: 15,),
                  CustomButtons(
                    width: MediaQuery.of(context).size.width*0.45,
                    image: 'assets/png/bag-2.png',
                    title: 'Add to Cart',
                    onTap: () {
                      int index =
                          detailCon.detailsModelList.indexWhere((element) {
                        return element.title == widget.detailModel!.title;
                      });
                      if (index > 0) {
                        detailCon.AddToCard();
                        debugPrint(
                            '======> add cart from details when contains title..........');
                      } else {
                        detailCon.myCartList
                            .add(detailCon.detailsModelList[index]);
                        debugPrint(
                            '======> add cart from details..........');
                      }
            
                      //  homeController.myCartList
                      //     .add(homeController.detailsModelList[index]);
                      // homeController.update();
                      // debugPrint('=====>${homeController.favCartList}');
                      // debugPrint(
                      //     '=====>${homeController.detailsModelList[index].images?[0].gallary}');
                    },
                  ),
                   
                
                ]
              ),
            ),
          ),
        ),
      ],
    );
  }
}
