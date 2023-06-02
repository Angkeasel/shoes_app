import 'package:flutter/material.dart';

import '../../../constant/app_setting.dart';
import '../../home/widgets/custom_favorite.dart';

class CustomFavoriteCard extends StatelessWidget {
  final GestureDragCancelCallback? onTap;
  final String ? image;
  final String ? title;
  final double? price;
  final bool ? isFav;
  final GestureDragCancelCallback? onFav;
  const CustomFavoriteCard({super.key, this.onTap, this.image, this.title, this.price, this.isFav= false, this.onFav});

  @override
  Widget build(BuildContext context) {
    return  Stack(
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
                    child: Image.asset(
                      "$image",
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
        
      ],
    );
  }
}