import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/my_card/controller/map_controller.dart';
import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
import 'package:allpay/src/util/helper/notification_helper.dart';
import 'package:allpay/src/widget/custom_dot_contianer.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../widget/home/custom_buttons.dart';

import '../../home/widgets/custom_payment_method.dart';
import '../../home/widgets/custom_text_lable.dart';
import '../widgets/custom_summary_order.dart';
import 'order_detail.dart';
import 'select_delivery_address.dart';

class CheckOutMyCart extends StatelessWidget {
  const CheckOutMyCart({super.key});

  @override
  Widget build(BuildContext context) {
    // final mapController = Get.put(AddressController());
    final myCardController = Get.put(MyCardController());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Check Out",
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   "Contact Information",
                      //   style: Theme.of(context).textTheme.titleMedium,
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                    //  CustomContainDotted(
                    //           onTap: () {
                    //             Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                 builder: (context) {
                    //                   return const SelectDeliveryAddressPage();
                    //                 },
                    //               ),
                    //             );
                    //             myCardController.fetchDeliveryAddress();
                    //           },
                    //           icon: Icons.add_circle_outline,
                    //           title: 'Add Address',
                    //         ),
                      // CustomEmailCart(
                      //   title: '+85593339596',
                      //   subTitle: 'Phone',
                      //   onTap: () {
                      //     // context.push('');
                      //   },
                      //   icons: 'assets/svg/call.svg',
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Image.asset("assets/png/marker.png",height: 20,color: Colors.blueAccent,),
                         const SizedBox(width: 10,),
                          const Text(
                            " Delivery Address",
                            style:TextStyle(fontSize: 16, fontWeight: FontWeight.w700)
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    myCardController.deliveryAddressList.isEmpty
                          ? CustomContainDotted(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const SelectDeliveryAddressPage();
                                    },
                                  ),
                                );
                                myCardController.fetchDeliveryAddress();
                              },
                              icon: Icons.add_circle_outline,
                              title: 'Add Address',
                            )
                          : Row(
                              children: [
                                Expanded(
                                  //Nantib
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          myCardController.deliveryAddressList.first.fullAddress!,
                                      
                                        maxLines: 1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: 'poppins-regular',
                                            ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                              '${myCardController.deliveryAddressList.first.firstName!} ${myCardController.deliveryAddressList.first.lastName!} ',
                                          
                                            maxLines: 2,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge
                                                ?.copyWith(
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: 'poppins-regular',

                                                ),
                                          ),
                                          
                                          const SizedBox(width: 15,),
                                          Text(
                                              myCardController.deliveryAddressList.first.phone!,
                                          
                                            maxLines: 2,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge
                                                ?.copyWith(
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: 'poppins-regular',

                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return const SelectDeliveryAddressPage();
                                      }),
                                    );
                                    myCardController.fetchDeliveryAddress();
                                  },
                                  child: SvgPicture.asset('assets/svg/edit.svg'),
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                       children: [
                        Image.asset('assets/png/money-check (1).png', height: 20, color: Colors.blueAccent,),
                         const SizedBox(width: 10,),
                         const   Text(
                            "Payment Method",
                            style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w700)
                          ),
                       ],
                     ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        // padding: const EdgeInsets.symmetric(
                        //     horizontal: 10, vertical: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.backgroundColor),
                        child:  CustomPaymentMethod(
                          title: 'Cash on delivery',
                          total:  myCardController.getTotalCost.toDouble()+0.5,
                        ),
                      ),
                       Row(
                               children: [
                                Image.asset('assets/png/order_sum.png', height: 20, color: Colors.blueAccent,),
                                 const SizedBox(width: 10,),
                                 const   Text(
                                    "Order Summary",
                                    style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w700)
                                  ),
                               ],
                             ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[200],
                      ),
                      Column(
                        children: myCardController.myCardList.asMap().entries.map((e) {
                          return   CustomSummaryOrder(
                            name: e.value.variant?.productName,
                            size: e.value.product?.sizeText,// get textsize
                            qty:  e.value.quantity,
                            image: e.value.variant?.imageUrl,
                            price: e.value.variant?.price,
                          );
                        }).toList(),
                      )
                    
                    ],
                  ),
                ),
              ),
            ),
            
            Container(
              color: Colors.white,
              // width: MediaQuery.of(context).size.width,
        
              child: SafeArea(
                top: false,
                minimum: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextLable(
                      text: 'Subtotal',
                      lablePrice: myCardController.getTotalCost.toDouble(),
                    ),
                    const SizedBox(height: 8),
                    const CustomTextLable(
                      text: 'Delivery',
                      lablePrice: 0.50,
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
                    CustomTextLable(
                      text: 'Total Cost',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: const Color(0xff2B2B2B)),
                      lablePrice: myCardController.getTotalCost.toDouble()+0.5,
                      styleLable: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                              color: AppColor.primaryColor,
                              fontFamily: 'poppins-regular'),
                    ),
                    const SizedBox(height: 20),
                    CustomButtons(
                      title: ' Place Order',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const OrderDetail();
                            },
                          ),
                        );
                      },
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
