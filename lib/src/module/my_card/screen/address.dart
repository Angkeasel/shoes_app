import 'package:allpay/src/module/my_card/widgets/custom_choose.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.pop();
              },
            );
          },
        ),
        title: const Text('Choose Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: Column(
          children: [
            const CustomChooseAdrees(
                icons: Icons.add, title: 'Choose New Address'),
            const SizedBox(
              height: 10,
            ),
            const CustomChooseAdrees(icons: Icons.person, title: 'My Address'),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                    value: "radio value",
                    groupValue: "group value",
                    onChanged: (value) {
                      debugPrint('hi'); //selected value
                    }),
                const Text('Addreess')
              ],
            )
          ],
        ),
      ),
    );
  }
}
