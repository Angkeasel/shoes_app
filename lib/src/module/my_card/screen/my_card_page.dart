import 'package:allpay/src/constant/app_setting.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../widget/home/custom_buttons.dart';
import '../../home/widgets/custom_cart_add.dart';
import '../../home/widgets/custom_text_lable.dart';
import '../controller/mycard_controller.dart';
import 'check_out_mycart.dart';

class SlideAct extends SlidableAction {
  const SlideAct({
    super.key,
    required super.onPressed,
  });
}

class MyCardPage extends StatefulWidget {
  const MyCardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  final myCardController = Get.put(MyCardController());

  @override
  void initState() {
    myCardController.getMyCard();
    // myCardController.qty.value = myCardController.myCardModel.value.quantity!;
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
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.keyboard_arrow_down_rounded)),
        title: const Text("My Cart"),
        elevation: 0,
      ),
      body: Obx(
        () => myCardController.loadingCart.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      myCardController.myCardList.isEmpty
                          ? 'Item'
                          : "${myCardController.myCardList.length} Items",
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
                    child: ListView.builder(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
                      itemCount: myCardController.myCardList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Slidable(
                            direction: Axis.horizontal,
                            dragStartBehavior: DragStartBehavior.start,
                            startActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const ScrollMotion(),
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: AppColor.primaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            final qty = myCardController
                                                    .myCardList[index]
                                                    .quantity! +
                                                1;
                                            myCardController.myCardList[index] =
                                                myCardController
                                                    .myCardList[index]
                                                    .copyWith(quantity: qty);
                                            setState(() {});
                                          },
                                          child: const Icon(
                                            Icons.add_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          myCardController
                                              .myCardList[index].quantity
                                              .toString(),
                                          style: const TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            final qty = myCardController
                                                    .myCardList[index]
                                                    .quantity! -
                                                1;
                                            if (qty >= 1) {
                                              myCardController
                                                      .myCardList[index] =
                                                  myCardController
                                                      .myCardList[index]
                                                      .copyWith(quantity: qty);
                                              setState(() {});
                                            }
                                          },
                                          child: const Icon(
                                            Icons.minimize_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: ScrollMotion(),
                              ),
                              children: [
                                SlidableAction(
                                  onPressed: (_) {
                                    // TODO: On Delete Product
                                    myCardController.myCardList.removeAt(index);
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  backgroundColor: AppColor.errorColor,
                                  padding: EdgeInsets.zero,
                                  icon: Icons.delete_rounded,
                                ),
                              ],
                            ),
                            child: CustomMyCart(
                                //width: Slidable.of(context)?.animation.isCompleted==true?100:400,
                                title: myCardController
                                    .myCardList[index].variant!.name,
                                image: myCardController
                                    .myCardList[index].variant!.imageUrl,
                                price:
                                    myCardController.myCardList[index].price),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ValueListenableBuilder(
                          builder:
                              (BuildContext context, int value, Widget? child) {
                            return CustomTextLable(
                              text: 'Subtotal',
                              lablePrice: double.parse("0"),
                            );
                          },
                          valueListenable: myCardController.counter,
                        ),
                        const SizedBox(height: 8),
                        CustomTextLable(
                          text: 'Delivery',
                          lablePrice: double.parse("0"),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: DottedDecoration(
                            color: const Color(0xFF9E9E9E),
                            shape: Shape.line,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        const SizedBox(height: 5),
                        ValueListenableBuilder(
                          builder:
                              (BuildContext context, value, Widget? child) {
                            return CustomTextLable(
                              text: 'Total Cost',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: const Color(0xff2B2B2B)),
                              lablePrice: double.parse('100'),
                              styleLable: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: AppColor.primaryColor,
                                      fontFamily: 'poppins-regular'),
                            );
                          },
                          valueListenable: myCardController.counter,
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CustomButtons(
                            title: 'Check Out',
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const CheckOutMyCart();
                              }));
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
