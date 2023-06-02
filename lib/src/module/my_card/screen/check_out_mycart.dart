import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../widget/home/custom_buttons.dart';
import '../../home/widgets/custom_email_cart.dart';
import '../../home/widgets/custom_payment_method.dart';
import '../../home/widgets/custom_text_lable.dart';
import 'order_detail.dart';

class CheckOutMyCart extends StatelessWidget {
  const CheckOutMyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Check Out",
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Information",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                // CustomEmailCart(
                //   title: 'Angkeasel',
                //   subTitle: 'UserName',
                //   onTap: () {},
                //   icons: 'assets/svg/email.svg',
                // ),
                const SizedBox(
                  height: 10,
                ),
                CustomEmailCart(
                  title: '+85593339596',
                  subTitle: 'Phone',
                  onTap: () {},
                  icons: 'assets/svg/call.svg',
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Address",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "phnom penh",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 145,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(11.575939999999996, 104.92303800000002),
                      zoom: 14.0,
                    ),
                  ),
                ),
                Text(
                  "Payment Method",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.backgroundColor),
                  child: const CustomPaymentMethod(title: 'Cash',),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomTextLable(
                  text: 'Subtotal',
                  lablePrice: 100,
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextLable(
                  text: 'Delivery',
                  lablePrice: 150,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "-----------------------------------------------------",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextLable(
                  text: 'Total Cost',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: const Color(0xff2B2B2B)),
                  lablePrice: 250,
                  styleLable: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(
                          color: AppColor.primaryColor,
                          fontFamily: 'poppins-regular'),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtons(
                  title: 'View Order',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OrderDetail();
                    }));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
