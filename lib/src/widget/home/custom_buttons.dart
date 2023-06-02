import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtons extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onTap;
  final String? image;
  final Color? color;
  final double? width;
  final Color? textColor;
  const CustomButtons(
      {super.key, this.title, this.onTap, this.image, this.color, this.width, this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? AppColor.primaryColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              image!.contains('svg')
                  ? SvgPicture.asset(image!)
                  : Image.asset(
                      image!,
                      color: Colors.white,
                      height: 22,
                    ),
             SizedBox(
              width:image!=null?10:0,
            ),
            Text(
              title ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w600, color: textColor?? Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
