import 'package:flutter/material.dart';

import '../../../constant/app_setting.dart';
import '../../home/widgets/custom_favorite.dart';

class CustomFavoriteCard extends StatelessWidget {
  final GestureDragCancelCallback? onTap;
  final String? image;
  final String? title;
  final double? price;
  final bool? isFav;
  final GestureDragCancelCallback? onFav;
  const CustomFavoriteCard(
      {super.key,
      this.onTap,
      this.image,
      this.title,
      this.price,
      this.isFav = false,
      this.onFav});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 230,
        width: 170,
        padding: const EdgeInsets.only(left: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 3,
                  spreadRadius: 0.5,
                  offset: const Offset(1, 1))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onFav,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: CustomFavitore(
                  iconSize: 18,
                  isWithOpacity: false,
                  isFavorite: isFav!,
                  selectIcon: 'assets/png/like.png',
                  unSelectIcon: 'assets/png/unlike.png',
                  backGroundColor: Colors.transparent,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.white,
                child: Image.network(
                  image == 'image'
                      ? 'https://www.maxairsoft.com/getimage/products/default.png'
                      : "$image",
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
                  fontSize: 12,
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
    );
  }
}
