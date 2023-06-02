import 'package:allpay/src/module/transfer/controller/controller.dart';
import 'package:allpay/src/widget/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  ConfirmPaymentScreen({Key? key}) : super(key: key);
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
              "Confirm Payment",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Text(_controller.money.value),
              // Text(_controller.noted.value),
              SingleChildScrollView(
                child: Container(
                  height: 490,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1.5,
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                          color: Colors.grey.withOpacity(0.1))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
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
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 2,
                        color: const Color(0xffF3F3F3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Amount (USA)",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            "\$${_controller.money.value}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            _controller.title.value,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Bank Account",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            _controller.accountNum.value,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Schedule",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            "Now",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Hours",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            "Now",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            "Salary",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Note",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff607D8A),
                            ),
                          ),
                          Text(
                            _controller.noted.value,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xff407BFF).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                  ),
                  child: const Text(
                    "Change",
                    style: TextStyle(fontSize: 16, color: Color(0xff407BFF)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        title: Container(
                          height: 443,
                          width: 335,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(children: [
                            SvgPicture.asset("assets/svg/dailog.svg"),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Congratulations!",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff407BFF)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Payment transfer successfully sent!",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff607D8A),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              isDisable: false,
                              isOutline: false,
                              onPressed: () {},
                              title: "View E-Recip!",
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                // for push to home screen
                                context.router.popUntilRoot();
                                //  context.router.pushNamed("home");
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const HomePage()));
                              },
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xff407BFF).withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(24),
                                  ),
                                ),
                                child: const Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff407BFF)),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      );
                    },
                  );
                },
                isDisable: false,
                isOutline: false,
                title: "Comfirm payment",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
