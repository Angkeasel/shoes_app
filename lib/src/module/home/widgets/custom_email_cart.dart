import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomEmailCart extends StatelessWidget {
  final String? icons;
  final String? title;
  final String? subTitle;
  final GestureTapCallback? onTap;

  const CustomEmailCart(
      {super.key, this.icons, this.subTitle, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: SvgPicture.asset(
            icons ?? "",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? "",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins-regular',
                      )),
              Text(
                subTitle ?? "",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'poppins-regular',
                    color: const Color(0xff707B81)),
              ),
            ],
          ),
        ),
        GestureDetector(
            onTap: onTap, child: SvgPicture.asset("assets/svg/edit.svg"))
      ],
    );
  }
}
