import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final String? name;
  final String? sized;
  final int? qty;
  final double? price;
  final double? amount;
  const CustomMenu({
    super.key,
    this.amount,
    this.name,
    this.price,
    this.qty,
    this.sized,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            name ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontFamily: 'poppins-regular',
                ),
          ),
        ),
        Expanded(
          child: Text(
            sized ?? "",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontFamily: 'poppins-regular',
                ),
          ),
        ),
        Expanded(
          child: Text(
            "$qty",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontFamily: 'poppins-regular',
                ),
          ),
        ),
        Expanded(
          child: Text(
            "\$$price",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontFamily: 'poppins-regular',
                ),
          ),
        ),
        Expanded(
          child: Text(
            "\$$amount",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontFamily: 'poppins-regular',
                ),
          ),
        ),
      ],
    );
  }
}
