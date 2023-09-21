import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
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
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    myCardController.getMyCard();
    // myCardController.qty.value = myCardController.myCardModel.value.quantity!;
    super.initState();
  }

  Future<void> _onRefresh() async {
    await myCardController.getMyCard();
  }

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
                    child: RefreshIndicator(
                      onRefresh: _onRefresh,
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
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
                                extentRatio: 0.35,
                                motion: const ScrollMotion(),
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
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
                                              myCardController
                                                      .myCardList[index] =
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
                                                        .copyWith(
                                                            quantity: qty);
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
                                  const SizedBox(width: 10),
                                  CustomSlidableAction(
                                    onPressed: (_) async {
                                      final cartModel =
                                          myCardController.myCardList[index];
                                      await homeController.updateItemInCart(
                                        context: context,
                                        id: cartModel.id.toString(),
                                        qty: cartModel.quantity!,
                                        // productId:
                                        //     cartModel.variant!.id.toString(),
                                        // variantID:
                                        //     cartModel.variant!.id.toString(),
                                      );
                                      // TODO: Update Stock
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    backgroundColor: AppColor.primaryColor,
                                    padding: EdgeInsets.zero,
                                    child: const Text(
                                      'Apply',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          fontFamily: 'Raleway'
                                          // color: Colors.red,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(width: 10)
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
                                      showDialogConfirmation(
                                        context: context,
                                        txt: 'remove this item from cart',
                                        accept: 'Yes',
                                        cancel: 'Cancel',
                                        onTap: () {
                                          Navigator.pop(context);

                                          homeController.removeItemFromCart(
                                            context: context,
                                            id: myCardController
                                                .myCardList[index].id
                                                .toString(),
                                          );
                                        },
                                      );

                                      // showDialog(
                                      //   context: context,
                                      //   builder: (_) => const AlertDialog(
                                      //     title: Text('Confirm'),
                                      //     actions: [],
                                      //   ),
                                      // );
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
                          valueListenable: myCardController.counter,
                          builder: (_, value, __) {
                            return CustomTextLable(
                              text: 'Subtotal',
                              lablePrice:
                                  myCardController.getTotalCost.toDouble(),
                            );
                          },
                        ),
                        const SizedBox(height: 8),
                        CustomTextLable(
                          text: 'Delivery',
                          lablePrice: double.parse("0.50"),
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
                              lablePrice:
                                  myCardController.getTotalCost.toDouble()+0.5,
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
                          child: myCardController.myCardList.isEmpty?CustomButtons(title: 'Check Out', onTap: (){}, disable: true,): CustomButtons(
                            title: 'Check Out',
                           
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    debugPrint('======>${ myCardController.myCardList[0].variant?.sizes?[0].sizeText}');
                                    return const CheckOutMyCart();
                                  },
                                ),
                              );
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
