import 'package:allpay/src/module/profile/model/view_order_model/view_order_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final ViewOrderModel? model;

  const OrderCard({
    super.key,
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    final txtStyle = Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily: 'poppins-regular',
          fontSize: 14,
        );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    'assets/png/order_sum.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID : ${model?.id}',
                      style: txtStyle,
                    ),
                    // const SizedBox(height: 10),
                    Text(
                      "Order Date : ${DateFormat("yyyy-MM-dd HH:mm a").format(DateTime.parse(model?.createdAt ?? ''))}",
                      style: txtStyle,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total : \$${model?.totalAmount ?? '--'}",
                            style: txtStyle),
                        Text(
                          "Status : ${model?.status} ",
                          style: txtStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
