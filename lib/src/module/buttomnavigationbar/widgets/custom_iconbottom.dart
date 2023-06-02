import 'package:flutter/material.dart';

class CustomItemButtomBar extends StatelessWidget {
  final String? label;
  final double? width;
  final double? height;
  final bool isSelect;
  final String selectIcon, unselectIcon;
  final GestureTapCallback? ontap;
  const CustomItemButtomBar(
      {Key? key,
      this.isSelect = false,
      required this.unselectIcon,
      required this.selectIcon,
      this.label,
      this.ontap,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: GestureDetector(
          onTap: () {
            if (ontap != null) {
              ontap!();
            }
          },
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  isSelect ? selectIcon : unselectIcon,
                  width: width,
                  height: height,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(label != null ? "$label" : "",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight:
                            isSelect ? FontWeight.w700 : FontWeight.w500)),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ));
  }
}
