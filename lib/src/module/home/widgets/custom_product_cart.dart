import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';

import 'custom_favorite.dart';

class CustomProductCart extends StatelessWidget {
  final GestureTapCallback? onTap;
  final GestureTapCallback? onFav;
  final String? title;
  final String? image;
  final double? price;
  final bool? isFav;
  final GestureTapCallback? onAdd;

  const CustomProductCart({
    super.key,
    this.onTap,
    this.image,
    this.price,
    this.title,
    this.onFav,
    this.isFav = false,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.white,
                    child: image == null
                        ? Image.asset(
                            "assets/png/default image.png",
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            image??'',
                            fit: BoxFit.cover,
                            height: 100,
                          ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "BEST SELLER",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColor.primaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway'),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: const Color(0xff6A6A6A),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway'),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: const Color(0xff2B2B2B),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins-regular'),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: onFav,
            child: CustomFavitore(
              iconSize: 22,
              isWithOpacity: false,
              isFavorite: isFav!,
              selectIcon: 'assets/png/like.png',
              unSelectIcon: 'assets/png/unlike.png',
              backGroundColor: Colors.transparent,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: onAdd,
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
