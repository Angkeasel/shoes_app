import 'package:allpay/src/constant/app_setting.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_favorite.dart';

class CustomProductCart extends StatelessWidget {
  final GestureTapCallback? onTap;
  final GestureTapCallback? onFav;
  final String? title;
  final String? image;
  final double? price;
  final bool? isFav;
  final bool? isHome;
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
    this.isHome = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(top: 10, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 3,
                  spreadRadius: 0.5,
                  offset: const Offset(1, 1)),
            ]),
        child: AspectRatio(
          aspectRatio: 157 / 201,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isHome!
                  ? GestureDetector(
                      onTap: onFav,
                      child: CustomFavitore(
                        iconSize: 22,
                        isWithOpacity: false,
                        isFavorite: isFav!,
                        selectIcon: 'assets/png/like.png',
                        unSelectIcon: 'assets/png/unlike.png',
                        backGroundColor: Colors.transparent,
                      ),
                    )
                  : const SizedBox(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: image == null
                      ? Image.asset(
                          "assets/png/default image.png",
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : CachedNetworkImage(
                          imageUrl: image == "image"
                              ? 'https://www.maxairsoft.com/getimage/products/default.png'
                              : image!,
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "\$$price",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: const Color(0xff2B2B2B),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'poppins-regular'),
                      ),
                    ),
                    Material(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      clipBehavior: Clip.antiAlias,
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: onAdd,
                        child: Ink(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
