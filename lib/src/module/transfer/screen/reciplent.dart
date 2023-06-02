import 'package:allpay/src/module/transfer/controller/controller.dart';
import 'package:allpay/src/module/transfer/screen/recipien_money.dart';
import 'package:allpay/src/widget/custom_button.dart';
import 'package:allpay/src/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RecipientScreen extends StatelessWidget {
  RecipientScreen({
    Key? key,
  }) : super(key: key);
  final _controller = Get.put(ControllerTransfer());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.2,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/svg/arrowBack.svg",
                fit: BoxFit.none,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "Add New Racipient",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Select Type",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF3F3F3),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Bank"),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    )
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Account Number/Address",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              hintText: "Account Number",
              initialValues: _controller.accountNum.value,
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              onPressed: () {
                _controller.money.value = "";
                _controller.noted.value = "";
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransferMoneyScrenn()));
              },
              isDisable: false,
              isOutline: false,
              title: "Add Recipient",
            )
            //Text(_controller.subtitle.value),
          ],
        ),
      ),
    );
  }
}
