import 'package:allpay/src/module/my_card/widgets/custom_isdefault_widget.dart';
import 'package:flutter/material.dart';

class CustomDeliveryAddressCard extends StatelessWidget {
  const CustomDeliveryAddressCard({
    super.key,
    this.fullAddress,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.isDefualt = false,
    this.label,
    this.ontap,
    this.isSelected = false,
  });
  final String? fullAddress;
  final String? phoneNumber;
  final String? firstName;
  final String? lastName;
  final bool? isDefualt;
  final String? label;
  final GestureTapCallback? ontap;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 6.0, right: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isSelected == false
                ? const Icon(
                    Icons.radio_button_off,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.radio_button_checked_sharp,
                    color: Colors.grey,
                  ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullAddress ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontFamily: 'poppins-regular'),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '$phoneNumber, $firstName $lastName',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontFamily: 'poppins-regular'),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      isSelected == true
                          ? const Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: CustomDefaultWidget(
                                title: 'Default',
                              ),
                            )
                          : Container(),
                      CustomDefaultWidget(
                        isNotdefault: true,
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
      ),
    );
  }
}
