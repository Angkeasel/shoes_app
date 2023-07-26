import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.style,
    this.title,
    this.isBodyMedium = false,
    this.isTitleLarge = false,
  });

  final bool? isTitleLarge;
  final bool? isBodyMedium;
  final TextStyle? style;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: isTitleLarge == true
          ? Theme.of(context).textTheme.titleLarge?.copyWith(
                overflow: TextOverflow.clip,
              )
          : isBodyMedium == true
              ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                    overflow: TextOverflow.clip,
                  )
              : style,
    );
  }
}
