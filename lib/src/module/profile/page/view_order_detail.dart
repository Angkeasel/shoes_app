import 'package:allpay/src/module/my_card/widgets/customs_menu.dart';
import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewOrderDetailPage extends StatefulWidget {
  const ViewOrderDetailPage({super.key, this.id});

  final int? id;

  @override
  State<ViewOrderDetailPage> createState() => _ViewOrderDetailPageState();
}

class _ViewOrderDetailPageState extends State<ViewOrderDetailPage> {
  final viewOrderCon = Get.put(ViewOrderController());
  @override
  void initState() {
    viewOrderCon.fetchInvoiceOrder(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final font = Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Colors.black,
          fontFamily: 'poppins-regular',
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice Card'),
      ),
      body: Obx(
        () => viewOrderCon.isLoadingOrderInvoice.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade300),
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
                                    " #0000${widget.id}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "sized",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Qty",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Price",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Amount",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
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
                            Column(
                              children: viewOrderCon
                                      .orderInvoiceModel.value.orderitems
                                      ?.asMap()
                                      .entries
                                      .map((e) {
                                    return Column(
                                      children: [
                                        CustomMenu(
                                          name:
                                              '${e.value.variant?.productName}',
                                          sized: '${e.value.size?.sizeText}',
                                          qty: e.value.quantity,
                                          price: e.value.price,
                                          amount: e.value.totalPrice,
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                          thickness: 2,
                                        ),
                                      ],
                                    );
                                  }).toList() ??
                                  [],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Subtotal : ${viewOrderCon.orderInvoiceModel.value.totalAmount ?? ''}\$",
                                style: font),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Discount : 0%",
                              style: font,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Total : ${viewOrderCon.orderInvoiceModel.value.totalAmount ?? ''}\$",
                              style: font,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (viewOrderCon.orderInvoiceModel.value.status == "NEW")
                    SafeArea(
                      minimum: const EdgeInsets.all(30).copyWith(top: 0),
                      child: SizedBox(
                        width: double.infinity,
                        child: CustomButtons(
                          color: Colors.red,
                          onTap: () {
                            showDialogConfirmation(
                              context: context,
                              txt: 'cancel this order',
                              accept: 'Yes',
                              cancel: 'Cancel',
                              onTap: () async {
                                Navigator.pop(context);
                                viewOrderCon.canCelOrder(widget.id!, context);
                              },
                            );
                          },
                          title: 'Cancel',
                        ),
                      ),
                    )
                ],
              ),
      ),
    );
  }
}
