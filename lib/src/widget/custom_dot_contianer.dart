import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class CustomContainDotted extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Function()? onTap;
  const CustomContainDotted({super.key, this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: DottedDecoration(
          color: const Color(0xFF9E9E9E),
          shape: Shape.box,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                // Icons.add_circle_outline,
                // color: AppColor.opacityCardRed,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                title ?? '',
                // 'Add Property Information',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    // color: AppColor.opacityCardRed,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
