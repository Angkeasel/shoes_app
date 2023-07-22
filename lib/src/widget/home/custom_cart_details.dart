import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCartDetails extends StatelessWidget {
  final String? image;
  final GestureTapCallback? onTap;
  final bool? isclick;
  final double? price;

  const CustomCartDetails(
      {super.key,
      this.image,
      this.onTap,
      this.price,
      this.isclick = false,
      required this.selected});
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(0, 4),
                color: Colors.grey.withOpacity(0.2))
          ],
          border: Border.all(
              color: selected ? Colors.blue : Colors.transparent, width: 1),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          image: DecorationImage(
            image: CachedNetworkImageProvider(image ??
                'https://www.maxairsoft.com/getimage/products/default.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
