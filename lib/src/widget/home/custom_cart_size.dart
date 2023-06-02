import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';

class CustomCartSize extends StatelessWidget {
  final String? sized;
  final bool? isSelected;
  final GestureTapCallback? onTap;
  const CustomCartSize({
    this.sized,
    this.isSelected = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected! ? AppColor.primaryColor : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          "$sized",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: isSelected! ? Colors.white : AppColor.primaryColor,
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
