import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMyCart extends StatelessWidget {
  final String? title;
  final String? image;
  final double? price;
  final double? width;

  CustomMyCart({super.key, this.title, this.image, this.price, this.width});
  final mycardcontroller = Get.put(MyCardController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Stack(
        children: [
          Container(
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF0F0F2),
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: NetworkImage(
                          image ??
                              "assets/image/1646394313-zoomx-streakfly-road-racing-shoes-lrCMPz.png",
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? "",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$$price",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'poppins-regular',
                                fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    mycardcontroller.removeCard();
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "${mycardcontroller.qty.value}",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    mycardcontroller.addToCard();
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
