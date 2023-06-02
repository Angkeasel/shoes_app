import 'package:flutter/material.dart';

class CustomFavitore extends StatelessWidget {
  final bool isFavorite;
  final double iconSize;
  final Color backGroundColor;
  final bool isWithOpacity;
  final String? selectIcon;
  final String? unSelectIcon;
  final Color? iconColor;
  const CustomFavitore({
    Key? key,
    this.isFavorite = false,
    this.iconSize = 25,
    this.backGroundColor = Colors.black,
    this.isWithOpacity = true,
    this.selectIcon,
    this.unSelectIcon,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isWithOpacity
              ? backGroundColor.withOpacity(0.4)
              : backGroundColor),
      child: Image.asset(
        isFavorite
            ? selectIcon != null
                ? selectIcon!
                : 'assets/png/like.png' // AppImage.favoriteImage
            : unSelectIcon != null
                ? unSelectIcon!
                : 'assets/png/unlike.png',
        height: iconSize,
        color: iconColor,
        width: iconSize,
      ),
    );
  }
}
