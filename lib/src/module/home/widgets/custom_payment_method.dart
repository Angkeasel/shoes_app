import 'package:flutter/material.dart';

class CustomPaymentMethod extends StatelessWidget {
  final String? title;
  const CustomPaymentMethod({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? "",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.check_circle_outline))
      ],
    );
  }
}
