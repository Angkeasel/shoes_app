import 'package:flutter/material.dart';

class CustomDefaultWidget extends StatelessWidget {
  final bool? isNotdefault;
  const CustomDefaultWidget({super.key, this.title, this.isNotdefault = false});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title ?? '',
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
