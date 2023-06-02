import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/home/models/detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../home/widgets/custom_cart_add.dart';


class MyCardPage extends StatefulWidget {
  final DetailModel? detailModel;
  const MyCardPage({Key? key,this.detailModel })
      : super(key: key);

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  
  final homeController = Get.put(HomeController());
   
  @override
  void initState() {
    super.initState();
  }
//  if(homeController.totalCard>=1){
//    homeController.subTotal.value = homeController.myCartList[0].price!;
//    homeController.totalCost.value=homeController.subTotal.value+1.00;
//     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text("My Cart"),
        elevation: 0,
      ),
      body:
         Obx(()=>
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  homeController.myCartList.length > 1
                      ? "${homeController.myCartList.length} Items"
                      : homeController.myCartList.isEmpty
                          ? 'Item'
                          : "${homeController.myCartList.length} Item",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontFamily: 'poppins-regular',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff1A2530)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
           Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child:ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: homeController.myCartList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Slidable(
                                key: ValueKey(homeController.myCartList),
                                closeOnScroll: false,
                                enabled: true,
                                startActionPane: ActionPane(
                                  extentRatio: 0.15,
                                  motion: const ScrollMotion(),
                                  dismissible:
                                      DismissiblePane(onDismissed: () {}),
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColor.primaryColor),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  debugPrint(
                                                      '=====> Add this Cart more');
                                                      homeController.AddToCard();
                                                 
                                                  //    homeController.a.value = counter.value++;
                                                  //   homeController.totalCard.value = homeController.a.value +1;
                                                  // homeController.subTotal.value = homeController.myCartList[0].price! * homeController.totalCard.value;
                                                  // homeController.totalCost.value=homeController.subTotal.value+1.00;
                                                
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                )),
                                            ValueListenableBuilder(
                                              builder: (BuildContext context,
                                                  int value, Widget? child) {
                                                return Text(
                                                  "${homeController.totalCard.value}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall!
                                                      .copyWith(
                                                          fontFamily:
                                                              'poppins-regular',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColor
                                                              .backgroundColor),
                                                );
                                              },
                                              valueListenable: homeController.counter,
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  ///// remove card
                                                  debugPrint(
                                                      '=====> remove some lenght of this Cart ');
                                                      homeController.RemoveCard();
                                                },
                                                icon: const Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                endActionPane: ActionPane(
                                  extentRatio: 0.15,
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (value) {
                                        homeController.myCartList.removeAt(index);
                                      },
                                      backgroundColor: AppColor.errorColor,
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ],
                                ),
                                child: CustomMyCart(
                                  //width: Slidable.of(context)?.animation.isCompleted==true?100:400,
                                  title: homeController.myCartList[index].title,
                                  image: homeController
                                      .myCartList[index].images![0].gallary,
                                  price: homeController.myCartList[index].price,
                                )),
                          );
                        }),
                  ),
                ),
              ),
              // const Spacer(),
              // Expanded(
              //   flex: 4,
              //   child: Container(
              //     color: Colors.white,
              //     width: MediaQuery.of(context).size.width,
              //     padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         ValueListenableBuilder(
              //           builder:
              //               (BuildContext context, int value, Widget? child) {
              //             return CustomTextLable(
              //               text: 'Subtotal',
              //               lablePrice: double.parse("${widget.detailModel!.price}"),
              //             );
              //           },
              //           valueListenable: homeController.counter,
              //         ),
              //         const SizedBox(
              //           height: 8,
              //         ),
              //          CustomTextLable(
              //           text: 'Delivery',
              //           lablePrice: widget.detailModel!.delivery!,
              //         ),
              //         const SizedBox(
              //           height: 5,
              //         ),
              //         Expanded(
              //           child: Text(
              //             "-----------------------------------------------------------",
              //             style: Theme.of(context).textTheme.titleSmall,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 5,
              //         ),
              //         ValueListenableBuilder(builder: (BuildContext context, value, Widget? child) { 
              //           return CustomTextLable(
              //             text: 'Total Cost',
              //             style: Theme.of(context)
              //                 .textTheme
              //                 .titleSmall!
              //                 .copyWith(color: const Color(0xff2B2B2B)),
              //             lablePrice: double.parse(
              //                 '100'),
              //             styleLable: Theme.of(context)
              //                 .textTheme
              //                 .titleSmall!
              //                 .copyWith(
              //                     color: AppColor.primaryColor,
              //                     fontFamily: 'poppins-regular'),
              //           );
                        
              //          }, valueListenable: homeController.counter,
                        
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(bottom: 20),
              //           child: CustomButtons(
              //             title: 'Check Out',
              //             onTap: () {
              //               Navigator.push(context,
              //                   MaterialPageRoute(builder: (context) {
              //                 return const CheckOutMyCart();
              //               }));
              //             },
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
                 ),
         ),
      
    );
  }
}
// import 'package:flutter/material.dart';


// class MyCardPage extends StatelessWidget {
//   const MyCardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Container();
//   }
// }