import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String? icon, title, route;
  final Function? onTab;
  const ServicesCard({
    Key? key,
    this.icon,
    this.title,
    this.route,
    this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab!(),
      child: Column(
        children: [
          Image.asset(
            icon ?? '',
            fit: BoxFit.fill,
            height: 65,
            width: 65,
          ),
          const SizedBox(height: 5),
          Text(
            title ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
