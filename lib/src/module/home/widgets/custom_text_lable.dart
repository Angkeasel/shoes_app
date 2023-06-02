import 'package:flutter/material.dart';

class CustomTextLable extends StatelessWidget {
  final String? text;
  final double? lablePrice;
  final TextStyle? style;
  final TextStyle? styleLable;
  const CustomTextLable({
    super.key,
    this.lablePrice,
    this.text,
    this.style,
    this.styleLable,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text ?? '',
          style: style ??
              Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: const Color(0xff707B81), fontSize: 16),
        ),
        Text(
          "\$$lablePrice",
          style: styleLable??Theme.of(context).textTheme.titleSmall!.copyWith(
                color: const Color(0xff1A2530),
                fontFamily: 'poppins-regular',
              ),
        ),
      ],
    );
  }
}
