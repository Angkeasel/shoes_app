import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSeletedItemWidget extends StatelessWidget {
  const CustomSeletedItemWidget(
      {super.key, this.onTap, this.label, this.colors});

  final Function()? onTap;
  final String? label;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colors,
        ),
        width: context.width,
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            '$label',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
