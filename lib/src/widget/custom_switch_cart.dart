import 'package:flutter/material.dart';

class CustomSwitchCart extends StatelessWidget {
  final String? title;
  final bool? isSwitched;
  final ValueChanged<bool>? onChanged;
  const CustomSwitchCart(
      {Key? key, this.isSwitched = false, this.title, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title",
          style: const TextStyle(
              color: Color(0xff5A4F4F),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        Switch(value: isSwitched!, onChanged: onChanged)
      ],
    );
  }
}
