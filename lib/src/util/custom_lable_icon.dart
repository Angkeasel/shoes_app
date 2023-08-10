import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/app_setting.dart';

class CustomLabelIcon extends StatelessWidget {
  final GestureTapCallback? ontap;
  final String? title;
  final String? icon;
  const CustomLabelIcon({super.key, this.icon, this.ontap, this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: ontap,
        child: Container(
            padding: const EdgeInsets.only(bottom: 16, top: 16, left: 24),
            child: Row(children: [
              if (icon != null)
                icon!.contains("svg")
                    ? SvgPicture.asset(
                        icon!,
                        colorFilter: const ColorFilter.mode(
                            AppColor.darkgray2, BlendMode.dstIn),
                      )
                    : Image.asset(icon!, height: 24, color: AppColor.darkgray2),
              const SizedBox(width: 10),
              Text(
                title ?? '',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              )
            ])),
      ),
    );
  }
}
