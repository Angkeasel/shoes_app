import 'package:allpay/src/module/auth/sign_in/controller/contoller.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/app_setting.dart';
import '../../../util/custom_lable_icon.dart';
import '../../../util/show_select_gender.dart';
import '../../auth/sign_in/screen/logins_screens.dart';
import '../controller/profile_controller.dart';
import '../widget/custom_setting_row.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final profileCon = Get.put(ProfileController());
    final authController = Get.put(ControllerSignin());

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // title: const Text("My Profile"),
      ),
      body: SafeArea(
        child: Obx(
          () => profileCon.isLoadingProfile.value ||
                  profileCon.isLoadingGender.value ||
                  profileCon.isLoadingOnSubmittedDOB.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                    color: Colors.white,
                    child: Column(
                      children:
                          profileCon.userProfileModel.value.profiles!.map((e) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        e.isLatest == true
                                            ? "${e.imageUrl}"
                                            : '',
                                      ), //"https://i0.wp.com/shaadlife.com/wp-content/uploads/remove-background-from-picture-4.webp?fit=612%2C408&ssl=1"),
                                      fit: BoxFit.cover),
                                  color: Colors.amber),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${profileCon.userProfileModel.value.email}"
                                        .replaceAll(
                                            RegExp('(?<=.)[^@](?=[^@]*?[^@]@)'),
                                            '*'),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
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
                                  return const LoginScreens();
                                }));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ],
                        );
                      }).toList(),

                      // const SizedBox(
                      //   height: 20,
                      // ),
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
                        CustomSettingRow(
                          title: 'Name',
                          lastText:
                              '${profileCon.userProfileModel.value.firstName}\t'
                              '${profileCon.userProfileModel.value.lastName}',
                          isLastText: true,
                          onTap: () {
                            debugPrint('onTap');
                            profileCon.fecthUserProfile();
                          },
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomSettingRow(
                          title: 'Phone Number',
                          lastText:
                              profileCon.userProfileModel.value.phoneNumber ??
                                  '',
                          isLastText: true,
                          onTap: () {},
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomSettingRow(
                          title: 'Email Address',
                          lastText:
                              '${profileCon.userProfileModel.value.email}',
                          isLastText: true,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomSettingRow(
                          title: 'Gender',
                          isMoreText: true,
                          moreText:
                              '${profileCon.userGendermodel.value.value}', //profileCon.titleGen.value,
                          onTap: () {
                            onShowBottomSheetGender(
                              height: MediaQuery.of(context).size.height * 0.2,
                              context: context,
                              child: Column(
                                  children: profileCon.genderList
                                      .asMap()
                                      .entries
                                      .map((e) {
                                return CustomLabelIcon(
                                  title: e.value,
                                  ontap: () {
                                    profileCon.indexGen.value = e.key;
                                    profileCon.titleGen.value = e.value;
                                    debugPrint(
                                        "======>${profileCon.indexGen.value}");
                                    debugPrint(
                                        "======>Gender${profileCon.titleGen.value}");
                                    profileCon.onSubmitUserGender(
                                        id: profileCon
                                            .userGendermodel.value.id);
                                    profileCon.fecthUserGender();
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
                        CustomSettingRow(
                          title: 'Birthday',
                          isMoreText: true,
                          moreText: profileCon.formattedDate.value,
                          // ${profileCon.dateTime.value.month}\t/'
                          //     '${profileCon.dateTime.value.day}\t/'
                          //     '${profileCon.dateTime.value.year}'
                          onTap: () {
                            debugPrint('Tapped:');
                            showCupertinoModalPopup(
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: double.infinity,
                                  height: 250.0,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextButton(
                                              child: const Text('Cancel'),
                                              onPressed: () {
                                                context.pop();
                                              },
                                            ),
                                            Container(
                                              width: 60.0,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                              ),
                                            ),
                                            TextButton(
                                              child: const Text('Done'),
                                              onPressed: () {
                                                profileCon.onSubmitUserDOB();
                                                profileCon.fecthUserProfile();
                                                context.pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: CupertinoDatePicker(
                                          backgroundColor: Colors.white,
                                          initialDateTime:
                                              profileCon.dateOfBirth.value,
                                          onDateTimeChanged: (newDate) {
                                            profileCon.dateOfBirth.value =
                                                newDate;
                                            debugPrint(
                                                'OldData: ${profileCon.dateOfBirth.value}');
                                          },
                                          use24hFormat: true,
                                          mode: CupertinoDatePickerMode.date,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomSettingRow(
                          title: 'Change Password',
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: const Text('Change Password?'),
                                    content: const Text(
                                        'Do you really want to change your password?'),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: () {
                                            //action code for "Yes" button
                                          },
                                          child: const Text('Yes')),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context); //close Dialog
                                        },
                                        child: const Text('Close'),
                                      )
                                    ],
                                  );
                                });
                          },
                        )
                      ],
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 20),
                    child: CustomButtons(
                      title: 'Log Out',
                      onTap: () async {
                        showDialogConfirmation(
                          context: context,
                          txt: 'Log out',
                          accept: 'Yes',
                          cancel: 'Cancel',
                          onTap: () async {
                            await authController.onlogout();
                          },
                        );
                      },
                    ),
                  )
                ]),
        ),
      ),
    );
  }
}
