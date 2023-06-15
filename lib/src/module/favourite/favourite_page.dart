import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constant/app_setting.dart';

class StatisticPage extends StatelessWidget {
  StatisticPage({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg/Hamburger.svg',
          ),
          onPressed: () {},
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Favourite',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ),
        elevation: 0,
        actions: [
          GestureDetector(
            child: Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.textDarkColor,
              ),
              child: SvgPicture.asset(
                'assets/svg/Vector.svg',
                color: AppColor.darkColor,
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Obx(
        () => GridView.builder(
            shrinkWrap: true,
            itemCount: homeController.favCartList.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 210,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 250),
            itemBuilder: (BuildContext ctx, index) {
              return Container();
              //  Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              //   child: CustomFavoriteCard(
              //     title: homeController.favCartList[index].title,
              //     image: homeController.favCartList[index].images![0].gallary,
              //     price: homeController.favCartList[index].price,
              //     isFav: homeController.favCartList[index].isFav,
              //     onFav: () {
              //       homeController.favCartList[index].isFav =
              //           !homeController.favCartList[index].isFav!;
              //       if (!homeController.favCartList[index].isFav!) {
              //         homeController.favCartList.removeAt(index);
              //         homeController.update();
              //       }
              //     },
              //   ),
              // );
            }),
      ),
    );
  }
}
