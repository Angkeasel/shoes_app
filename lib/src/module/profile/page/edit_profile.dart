import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/profile/widget/custom_setting_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:intl/intl.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  void initState() {
    super.initState();

    scrollController = FixedExtentScrollController(initialItem: index);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  late FixedExtentScrollController scrollController;
  final List<String> items = ["Male", "Female"];
  int index = 0;
  DateTime selectedDate = DateTime.now();
  bool showDate = false;
  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }

  String getDate() {
    // ignore: unnecessary_null_comparison
    if (selectedDate == null) {
      return 'select date';
    } else {
      return DateFormat('MMM d, yyyy').format(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text(
            "Edit Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 5, bottom: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Photo",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://i0.wp.com/shaadlife.com/wp-content/uploads/remove-background-from-picture-4.webp?fit=612%2C408&ssl=1"))),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 16,
                            ))
                      ],
                    ),
                   
                  ),
                   const Divider(),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,right: 20, bottom: 20,top: 10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text("Account ID", style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w500
                        ),),
                        Text("DIP0001", style: Theme.of(context).textTheme.titleSmall!.copyWith(
                         color: AppColor.grey1Color
                        ),),
                      ],
                     ),
                   )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(left: 20,top: 15, bottom: 15,right: 10),
              color: Colors.white,
              child:const CustomSettingRow(
                title: 'Change Account Password',
              )
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(left: 20,top: 15, bottom: 15,right: 10),
              color: Colors.white,
              child:Column(
                children: const [
                  CustomSettingRow(
                    title: 'Name',
                    lastText:'Add',
                    isLastText: true,
                   
                  ),
                  Divider(),
                  CustomSettingRow(
                    title: 'Phone Number',
                    lastText:'09339596',
                    isLastText: true,
                   
                  ),
                   Divider(),
                  CustomSettingRow(
                    title: 'Email Address',
                     lastText:'Add',
                    isLastText: true,
                   
                  ),
                   Divider(),
                  CustomSettingRow(
                    title: 'Gender',
                    isMoreText: true,
                    moreText: 'Male',
                   
                  ),
                   Divider(),
                  CustomSettingRow(
                    title: 'Birthday',
                   
                  ),
                  
                   
                ],
              )
            ),
            const SizedBox(height: 10,),
             Container(
              padding: const EdgeInsets.only(left: 20,top: 15, bottom: 15,right: 10),
              color: Colors.white,
              child:const CustomSettingRow(
                title: 'Delete Account',
              )
            ),
          ],
        )
        // Column(
        //   children: [
        //     Expanded(
        //       child: ListView(
        //         children: [
        //           Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //             child: const CustomTextFiled(
        //               initialValues: 'Aillen Fullbright',
        //             ),
        //           ),
        //           Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //             child: const CustomTextFiled(
        //               initialValues: 'Aillen ',
        //             ),
        //           ),
        //           GestureDetector(
        //               onTap: () {
        //                 _selectDate(context);
        //                 showDate = true;
        //               },
        //               child: Container(
        //                   margin: const EdgeInsets.symmetric(
        //                       horizontal: 20, vertical: 10),
        //                   padding: const EdgeInsets.symmetric(
        //                       horizontal: 20, vertical: 15),
        //                   decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(10),
        //                       color: Colors.grey.shade200),
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       showDate ? Text(getDate()) : const SizedBox(),
        //                       SvgPicture.asset(
        //                         "assets/svg/Calendar.svg",
        //                       )
        //                     ],
        //                   ))),
        //           Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //             child: CustomTextFiled(
        //               initialValues: 'ailleen_fullbright@yourdomain.com ',
        //               suffixIcon: Padding(
        //                 padding: const EdgeInsets.all(20.0),
        //                 child: SvgPicture.asset(
        //                   "assets/svg/Message.svg",
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //             child: CustomTextFiled(
        //               initialValues: 'Cambodia',
        //               suffixIcon: Padding(
        //                 padding: const EdgeInsets.symmetric(horizontal: 20),
        //                 child: SvgPicture.asset(
        //                   "assets/svg/Arrow - Down 2.svg",
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //             child: CustomTextFiled(
        //               initialValues: '93339596 ',
        //               prifixIcon: Row(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   IconButton(
        //                       onPressed: () {},
        //                       icon: SvgPicture.asset("assets/svg/Stroke 2.svg")),
        //                   CountryCodePicker(
        //                     onChanged: (v) {
        //                       // loginCon.countryCode.value = v.toString();
        //                     },
        //                     initialSelection: 'KH',
        //                     favorite: const ['+855', 'KH'],
        //                     showCountryOnly: false,
        //                     showOnlyCountryWhenClosed: false,
        //                     alignLeft: false,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               scrollController.dispose();
        //               scrollController =
        //                   FixedExtentScrollController(initialItem: index);
        //               showCupertinoModalPopup(
        //                   context: context,
        //                   builder: (context) {
        //                     return CupertinoActionSheet(
        //                       actions: [
        //                         buildPicker(),
        //                       ],
        //                       cancelButton: CupertinoActionSheetAction(
        //                         child: const Text("Cancel"),
        //                         onPressed: () {
        //                           context.router.pop();
        //                         },
        //                       ),
        //                     );
        //                   });
        //             },
        //             child: Container(
        //               margin: const EdgeInsets.symmetric(
        //                   horizontal: 20, vertical: 10),
        //               padding: const EdgeInsets.symmetric(
        //                   horizontal: 20, vertical: 15),
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Colors.grey.shade200),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Text(items[index]),
        //                   SvgPicture.asset("assets/svg/Arrow - Down 2.svg")
        //                 ],
        //               ),
        //             ),
        //           ),
        //           Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //             child: CustomTextFiled(
        //               initialValues: '12/12/2012 ',
        //               suffixIcon: Padding(
        //                 padding: const EdgeInsets.symmetric(horizontal: 20),
        //                 child: SvgPicture.asset(
        //                   "assets/svg/Arrow - Down 2.svg",
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        //       child: CustomButton(
        //         title: 'Update',
        //         textStyle: const TextStyle(color: Colors.white, fontSize: 18),
        //         isDisable: false,
        //         isOutline: false,
        //         onPressed: () {},
        //       ),
        //     )
        //   ],
        // ),
        );
  }

  Widget buildPicker() {
    return SizedBox(
      height: 100,
      child: CupertinoPicker(
          scrollController: scrollController,
          itemExtent: 30,
          onSelectedItemChanged: (value) {
            setState(() {
              index = value;
            });
            final item = items[index];
          },
          children: items
              .map((e) => Center(
                    child: Text(
                      e,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ))
              .toList()),
    );
  }
}
