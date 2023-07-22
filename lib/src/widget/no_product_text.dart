import 'package:flutter/material.dart';

class NoProduct extends StatelessWidget {
  final String? text;
  const NoProduct({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text ?? "No Products",
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
      ),
    );
  }
}
