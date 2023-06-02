import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/app_setting.dart';
import '../../../util/custom_lable_icon.dart';
import '../../../util/show_select_gender.dart';
import '../../auth/sign_in/screen/logins_screens.dart';
import '../controller/profile_controller.dart';
import '../widget/custom_setting_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileCon = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // title: const Text("My Profile"),
      ),
      body: SafeArea(
        child: Obx(()=>
         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i0.wp.com/shaadlife.com/wp-content/uploads/remove-background-from-picture-4.webp?fit=612%2C408&ssl=1"),
                                fit: BoxFit.cover),
                            color: Colors.amber),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "093339596".replaceRange(3, 6, "***"),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Account Information",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff9E9E9E)),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            debugPrint('=======> Route to Edit Profile');
                            //context.push('/profile/-rourter/edit-profile');
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginScreens();
                            }));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // const Divider(),
                  // Container(
                  //   color: Colors.white,
                  //   child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         "Order",
        
                  //         style: Theme.of(context).textTheme.titleSmall,
                  //       ),
        
                  //       Container(width: 1, height: 40, color: Colors.grey,),
                  //       Text(
                  //         "Leave Feedback",
                  //         style: Theme.of(context).textTheme.titleSmall,
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 15, right: 15, bottom: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    const CustomSettingRow(
                      title: 'Name',
                      lastText: 'Add',
                      isLastText: true,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomSettingRow(
                      title: 'Phone Number',
                      lastText: '093339596',
                      isLastText: true,
                      onTap: () {},
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomSettingRow(
                      title: 'Email Address',
                      lastText: 'Add',
                      isLastText: true,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomSettingRow(
                      title: 'Gender',
                      isMoreText: true,
                      moreText:  profileCon.titleGen.value,
                      onTap: () {
                        onShowBottomSheetGender(
                          height: MediaQuery.of(context).size.height * 0.2,
                          context: context,
                          child: Column(
                              children:
                                  profileCon.genderList.asMap().entries.map((e) {
                            return CustomLabelIcon(
                              title: e.value,
                              ontap: (){
                                profileCon.indexGen.value = e.key;
                                profileCon.titleGen.value = e.value;
                                debugPrint("======>${ profileCon.indexGen.value}");
                                debugPrint("======>Gender${ profileCon.titleGen.value}");
                                context.pop();
                              },
                            );
                          }).toList()),
                        );
                      },
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomSettingRow(
                      title: 'Birthday',
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomSettingRow(
                      title: 'Change Password',
                      onTap: () {},
                    )
                  ],
                )),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //   child: Text(
            //     "Settings",
            //     style: Theme.of(context)
            //         .textTheme
            //         .titleSmall!
            //         .copyWith(fontSize: 18, fontWeight: FontWeight.w700),
            //   ),
            // ),
            // Container(
            //   padding:
            //       const EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 15),
            //   color: Colors.white,
            //   child: Column(
            //     children: [
            //       CustomSettingRow(title: 'Notification', onTap: () {}),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       const Divider(),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       CustomSettingRow(
            //         title: 'Languages',
            //         isMoreText: true,
            //         moreText: 'EngLish',
            //         onTap: () {},
            //       ),
            //     ],
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: CustomButtons(
                title: 'Log Out',
              ),
            )
          ]),
        ),
      ),
    );
  }
}
