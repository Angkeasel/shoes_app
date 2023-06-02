import 'package:flutter/material.dart';

onShowBottomSheetGender({
  required BuildContext context,
  Widget? child,
  double? height,
  bool isContext = false,
  Widget Function(BuildContext context)? childContext,
}) {
  showModalBottomSheet(
    useRootNavigator: true,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        height: height,
        child: isContext ? childContext!(context) : child,
      );
    },
  );
}
