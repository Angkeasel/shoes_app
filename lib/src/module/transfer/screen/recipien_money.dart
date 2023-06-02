import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/transfer/controller/controller.dart';
import 'package:allpay/src/widget/custom_button.dart';
import 'package:allpay/src/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'cocfirm_payment.dart';

class TransferMoneyScrenn extends StatefulWidget {
  const TransferMoneyScrenn({Key? key}) : super(key: key);
  final String? date = "Date";
  @override
  State<TransferMoneyScrenn> createState() => _TransferMoneyScrennState();
}

class _TransferMoneyScrennState extends State<TransferMoneyScrenn> {
  final _controller = Get.put(ControllerTransfer());

  final controller = TextEditingController();

  final _forKey = GlobalKey<FormState>();
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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
              "Transfer Money",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          Image.asset("assets/png/yellow_star.png"),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _forKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(_controller.image.value),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    _controller.title.value,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "${_controller.bank.value} | ${_controller.accountNum.value}",
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff5A4F4F),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffF3F3F3),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  height: 80,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    border: Border.all(width: 1, color: AppColor.primaryColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 40,
                        width: 113,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(18)),
                          color: const Color(0xff407BFF).withOpacity(0.2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.primaryColor,
                              ),
                              child: const Center(
                                  child: Text(
                                "\$",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "USD",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset("assets/png/down.png"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 0),
                        width: 160,
                        child: TextFormField(
                          controller: TextEditingController(
                              text: _controller.money.value),
                          textAlign: TextAlign.start,
                          onChanged: ((e) => {
                                _controller.money.value = e,
                              }),
                          style: const TextStyle(
                            fontSize: 34,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Container(
                              padding: const EdgeInsets.only(left: 20),
                              alignment: Alignment.center,
                              width: 8,
                              child: const Text(
                                "\$",
                                style: TextStyle(
                                    fontSize: 34, color: Colors.black),
                              ),
                            ),
                            // focusedBorder: InputBorder.none,
                            // enabledBorder: InputBorder.none,
                            // errorBorder: InputBorder.none,
                            // disabledBorder: InputBorder.none,
                            contentPadding: const EdgeInsets.only(
                              left: 15,
                              top: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Schedule",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 3),
                          const Text(
                            "Hours",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            height: 50,
                            width: 160,
                            decoration: const BoxDecoration(
                              color: Color(0xffF3F3F3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              height: 50,
                              width: 160,
                              decoration: const BoxDecoration(
                                color: Color(0xffF3F3F3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                              ),
                              child: TextField(
                                controller: dateinput,
                                readOnly: true,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Date",
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                ),
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2020),
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    debugPrint("$pickedDate");
                                    String formattedDate =
                                        DateFormat('dd-MM-yyyy')
                                            .format(pickedDate);
                                    debugPrint(formattedDate);

                                    setState(() {
                                      dateinput.text = formattedDate;
                                    });
                                  } else {
                                    debugPrint("Date is not selected");
                                  }
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            height: 50,
                            width: 160,
                            decoration: const BoxDecoration(
                              color: Color(0xffF3F3F3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Hours",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(Icons.alarm)
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Select Category",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _controller.salary.value,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Image.asset("assets/png/down.png"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Noted",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: CustomTextFiled(
                    controller:
                        TextEditingController(text: _controller.noted.value),
                    onChanges: (e) {
                      _controller.noted.value = e;
                    },
                    hintText: "Noted",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmPaymentScreen()),
                      );
                      _controller.money.value;
                      _controller.noted.value;
                    },
                    isDisable: false,
                    isOutline: false,
                    title: 'Continue',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
