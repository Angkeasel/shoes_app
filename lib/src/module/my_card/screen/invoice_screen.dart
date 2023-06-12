import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice card"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Row(
                children: [
                  Text(
                    "Reference No.:",
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
            const Divider(
              color: Colors.black,
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
