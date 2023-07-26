import 'package:allpay/src/module/profile/controller/profile_controller.dart';
import 'package:allpay/src/module/profile/widget/custom_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewOrderPage extends StatelessWidget {
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Order'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              debugPrint('ontap');
              profileController.fetchOrderProducts();
            },
            child: const Text('hello'),
          ),
          Container(
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
                  width: 5.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomTextWidget(
                        title: '2017',
                        isTitleLarge: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: CustomTextWidget(
                          title: '02',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                      const CustomTextWidget(
                        title: 'DEC',
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
                        const CustomTextWidget(
                          title: 'Order #3404',
                          isTitleLarge: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: CustomTextWidget(
                            title: 'Nike Men',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        const CustomTextWidget(
                          title: 'tinutchan@gmail.com',
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
                          title: '\$150.00',
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
                      title: 'new',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
