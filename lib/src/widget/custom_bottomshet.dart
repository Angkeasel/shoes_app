import 'package:flutter/material.dart';

onShowBottomSheet({
  BuildContext? context,
  String? title,
  Function? ontab,
  String? subtitle,
  Widget? child,
  double? height,
  bool? appbar = false,
  bool? isTitle = false,
  bool? isSubtitle = false,
  Color? colors,
  EdgeInsets? padding,
  bool? isContainer = false,
  bool? isWidget = false,
  bool? enableDrag,
  bool? isDimissible,
}) {
  showModalBottomSheet(
      isDismissible: isDimissible ?? false,
      enableDrag: enableDrag ?? false,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context!,
      builder: (context) {
        return Container(
          padding: padding,
          height: height,
          child: Column(
            children: [
              if (appbar == true)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: colors,
                  ),
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isContainer == false)
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 4,
                              width: 35,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Color(0xffBFBFBF),
                              ),
                            ),
                          ),
                        ),
                      if (isTitle == false)
                        const SizedBox(
                          height: 10,
                        ),
                      if (isTitle == false)
                        Center(
                          child: Text(
                            '$title',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                          ),
                        ),
                      if (isSubtitle == false)
                        const SizedBox(
                          height: 10,
                        ),
                      if (isSubtitle == false)
                        Text(
                          '$subtitle',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff565656),
                                  height: 1.5),
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
                        height: 1,
                      )
                    ],
                  ),
                ),
              if (isWidget == false)
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: child,
                    ),
                  ),
                ),
            ],
          ),
        );
      });
}
