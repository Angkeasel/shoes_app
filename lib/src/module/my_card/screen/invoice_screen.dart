import 'package:allpay/src/module/my_card/widgets/customs_menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: const Text("Invoice card"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Row(
                children: [
                  Text(
                    "Reference No :",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    " #000001",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Name",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    "sized",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Qty",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Price",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Amount",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const CustomMenu(
              name: 'Air Shoes',
              sized: '37',
              qty: 1,
              price: 34,
              amount: 34,
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Subtotal : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Discount : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Total : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "VAT : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Grand Total : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
