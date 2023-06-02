import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';

class CustomSettingRow extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  final bool? isMoreText;
  final bool? isLastText;
  final String? lastText;
  final String? moreText;

  const CustomSettingRow( 
      {super.key,
      this.title,
      this.onTap,
      this.isMoreText = false,
      this.isLastText = false,
      this.lastText,this.moreText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical:5 ),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title ?? '',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.w500)),
            const Spacer(),
            isMoreText!
                ? Text(moreText??'',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400, color: AppColor.grey1Color))
                : const SizedBox(),
                const SizedBox(width: 10,),
            isLastText!
                ? Text(lastText ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.w400))
                : const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 16,
                    )
          ],
        ),
      ),
    );
  }
}
