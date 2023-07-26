// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:allpay/src/module/profile/widget/custom_textwidget.dart';

class CustomViewOrderWidget extends StatelessWidget {
  const CustomViewOrderWidget({
    Key? key,
    this.year,
    this.day,
    this.month,
    this.orderId,
    this.title,
    this.email,
    this.totalAmount,
    this.status,
  }) : super(key: key);

  final String? year;
  final String? day;
  final String? month;
  final String? orderId;
  final String? title;
  final String? email;
  final String? totalAmount;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.3, 0.5),
            color: Colors.grey.shade200,
          ),
        ],
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 85.0,
            color: Colors.red,
            width: 6.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextWidget(
                  title: '$year',
                  isTitleLarge: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: CustomTextWidget(
                    title: '$day',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                CustomTextWidget(
                  title: '$month',
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    title: orderId!.length == 2
                        ? 'Order #000$orderId'
                        : orderId!.length == 3
                            ? 'Order #00$orderId'
                            : 'Order #0$orderId',
                    isTitleLarge: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: CustomTextWidget(
                      title: '$title',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  CustomTextWidget(
                    title: '$email',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextWidget(
                    title: 'Total',
                    isTitleLarge: true,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  CustomTextWidget(
                    title: '\$$totalAmount',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: CustomTextWidget(
                title: '$status',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: status == 'New'
                        ? Colors.blue
                        : status == 'Approved'
                            ? Colors.green
                            : status == 'Reject'
                                ? Colors.red
                                : Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
