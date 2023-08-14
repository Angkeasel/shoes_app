import 'package:allpay/src/module/my_card/widgets/custom_isdefault_widget.dart';
import 'package:flutter/material.dart';

class CustomDeliveryAddressCard extends StatelessWidget {
  const CustomDeliveryAddressCard({
    super.key,
    this.value,
    this.onChanged,
    this.fullAddress,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.isDefualt,
    this.label,
  });

  final bool? value;
  final Function(bool?)? onChanged;
  final String? fullAddress;
  final String? phoneNumber;
  final String? firstName;
  final String? lastName;
  final bool? isDefualt;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6.0, right: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            side: BorderSide(
                width: 1.5, color: Theme.of(context).unselectedWidgetColor),
            splashRadius: 1,
            checkColor: Colors.white,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullAddress ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  '$phoneNumber, $firstName $lastName',
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: [
                    CustomDefaultWidget(
                      title: isDefualt == true ? 'Default' : '',
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    CustomDefaultWidget(
                      title: label ?? '',
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
