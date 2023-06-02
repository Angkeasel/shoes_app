import 'package:allpay/src/module/transfer/controller/controller.dart';
import 'package:allpay/src/module/transfer/screen/reciplent.dart';
import 'package:allpay/src/module/transfer/widget/custom_user_transfer.dart';
import 'package:allpay/src/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constant/app_setting.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  final _controller = Get.put(ControllerTransfer());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        // leading: Container(
        //   color: Colors.pink,
        // ),
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        focusColor: AppColor.primaryColor,
        onPressed: () {},
        child: const Center(child: Icon(Icons.add)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              CustomTextFiled(
                hintText: "Search",
                prifixIcon: Image.asset("assets/png/Search.png"),
                suffixIcon: Image.asset("assets/png/Filter.png"),
              ),
              const TabBar(
                automaticIndicatorColorAdjustment: true,
                indicatorColor: AppColor.primaryColor,
                indicatorWeight: 4,
                labelColor: AppColor.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Text(
                      "All",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      "Favarite",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      "Bank",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      "E-Wallet",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 600,
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        color: const Color(0xffF3F3F3),
                        child: Column(
                          children: _controller.listUser
                              .asMap()
                              .entries
                              .map(
                                (e) => CustomUserTransfer(
                                    model: e.value,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RecipientScreen(),
                                        ),
                                      );
                                      _controller.accountNum.value =
                                          e.value.account!;
                                      _controller.image.value = e.value.image!;
                                      _controller.bank.value = e.value.bank!;
                                      _controller.accountNum.value =
                                          e.value.account!;
                                      _controller.title.value = e.value.title!;
                                    }),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    const SingleChildScrollView(
                      child: Center(
                        child: Text("aa"),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        color: const Color(0xffF3F3F3),
                        child: Column(
                          children: _controller.listUser
                              .asMap()
                              .entries
                              .map(
                                (e) => CustomUserTransfer(
                                  model: e.value,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        color: const Color(0xffF3F3F3),
                        child: Column(
                          children: _controller.listUser
                              .asMap()
                              .entries
                              .map(
                                (e) => CustomUserTransfer(
                                  model: e.value,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
