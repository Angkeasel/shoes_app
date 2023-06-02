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
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: const Offset(0, 2),
                  color: Colors.grey.withOpacity(0.2))
            ],
            border: Border.all(
                color: selected ? Colors.blue : Colors.transparent, width: 1),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("$image"), fit: BoxFit.cover)),
      ),
    );
  }
}
