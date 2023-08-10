import 'package:flutter/material.dart';

class CustomDefaultWidget extends StatelessWidget {
  const CustomDefaultWidget({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title ?? '',
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.amber, fontWeight: FontWeight.bold),
      ),
    );
  }
}
