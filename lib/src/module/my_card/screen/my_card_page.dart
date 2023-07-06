import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/home/custom_buttons.dart';
import '../../home/widgets/custom_cart_add.dart';
import '../../home/widgets/custom_text_lable.dart';
import '../controller/mycard_controller.dart';
import 'check_out_mycart.dart';

class MyCardPage extends StatefulWidget {
  final int? proId;
  final int? varId;
  const MyCardPage({Key? key, this.proId, this.varId}) : super(key: key);

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  final myCardController = Get.put(MyCardController());

  @override
  void initState() {
    myCardController.getMyCard();
    myCardController.qty.value = myCardController.myCardModel.value.quantity!;
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
      body: Obx(
        () => Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    myCardController.myCardList.isEmpty
                        ? 'Item'
                        : "${myCardController.qty.value} Item",
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
                SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: myCardController.myCardList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: CustomMyCart(
                                //width: Slidable.of(context)?.animation.isCompleted==true?100:400,
                                title: myCardController
                                    .myCardList[index].variant!.name,
                                image: myCardController
                                    .myCardList[index].variant!.imageUrl,
                                price: myCardController
                                    .myCardList[index].variant!.price),
                          );
                        }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 200,
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
                  children: [
                    ValueListenableBuilder(
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return const CustomTextLable(
                          text: 'Subtotal',
                          //  lablePrice: double.parse(""),
                        );
                      },
                      valueListenable: myCardController.counter,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const CustomTextLable(
                      text: 'Delivery',
                      //lablePrice: widget.detailModel!.delivery!,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Text(
                        "-------------------------------------------------",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ValueListenableBuilder(
                      builder: (BuildContext context, value, Widget? child) {
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
                    const SizedBox(
                      height: 20,
                    ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
