import 'dart:io';

import 'package:allpay/src/module/auth/sign_in/controller/contoller.dart';
import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:allpay/src/module/profile/widget/custom_seleted_item_widget.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:allpay/src/widget/custom_bottomshet.dart';
import 'package:allpay/src/widget/custom_image_view_full_screen.dart';
import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/app_setting.dart';
import '../../../util/custom_lable_icon.dart';
import '../../../util/show_select_gender.dart';
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
  final profileCon = Get.put(ProfileController());
  final authController = Get.put(ControllerSignin());
  final viewOrderCon = Get.put(ViewOrderController());
  @override
  Widget build(BuildContext context) {
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
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, bottom: 10, right: 20),
                        color: Colors.white,
                        child: profileCon
                                .userProfileModel.value.profiles!.isNotEmpty
                            ? Column(
                                children: profileCon
                                    .userProfileModel.value.profiles!
                                    .asMap()
                                    .entries
                                    .map((e) {
                                  debugPrint(
                                      "Img URL: ${e.value.imageUrl!.isEmpty}");
                                  debugPrint(
                                      "Img Path: ${profileCon.imagePath.isEmpty}");
                                  if (e.key ==
                                      profileCon.userProfileModel.value
                                              .profiles!.length -
                                          1) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            profileCon
                                                    .isLoadingPickedImage.value
                                                ? Shimmer.fromColors(
                                                    baseColor:
                                                        Colors.grey.shade300,
                                                    highlightColor:
                                                        Colors.grey.shade400,
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.white,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      height: 60,
                                                      width: 60,
                                                    ),
                                                  )
                                                : Container(
                                                    height: 60,
                                                    width: 60,
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: e.value.imageUrl ==
                                                                null &&
                                                            profileCon.imagePath
                                                                .isEmpty
                                                        ? Image.asset(
                                                            'assets/image/profile.png')
                                                        : profileCon.imagePath
                                                                    .isEmpty ||
                                                                e.value.isLatest ==
                                                                    true
                                                            ? CachedNetworkImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                imageUrl:
                                                                    "${e.value.imageUrl}",
                                                                placeholder: (context,
                                                                        url) =>
                                                                    Shimmer
                                                                        .fromColors(
                                                                  baseColor: Colors
                                                                      .grey
                                                                      .shade300,
                                                                  highlightColor:
                                                                      Colors
                                                                          .grey
                                                                          .shade400,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    height: 60,
                                                                    width: 60,
                                                                  ),
                                                                ),
                                                                errorWidget:
                                                                    (context,
                                                                        url,
                                                                        error) {
                                                                  // debugPrint(
                                                                  //     'Error URL: $url');
                                                                  // debugPrint(
                                                                  //     'Error Error: $error');
                                                                  return const Icon(
                                                                    Icons.error,
                                                                  );
                                                                },
                                                              )
                                                            : Image.file(
                                                                File(
                                                                  profileCon
                                                                      .imagePath
                                                                      .value,
                                                                ),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                  ),
                                            Positioned(
                                              bottom: -5.0,
                                              right: 0.0,
                                              child: InkWell(
                                                onTap: () {
                                                  onShowBottomSheet(
                                                    isDimissible: false,
                                                    enableDrag: false,
                                                    context: context,
                                                    height:
                                                        context.height * 1 / 3,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 15.0,
                                                          horizontal: 20.0),
                                                      height: context.height *
                                                          1 /
                                                          2.6,
                                                      child: Column(
                                                        children: [
                                                          Column(
                                                            children: [
                                                              CustomSeletedItemWidget(
                                                                label:
                                                                    'View Photo',
                                                                onTap: () {
                                                                  context.pop();
                                                                  Navigator.of(
                                                                          context,
                                                                          rootNavigator:
                                                                              true)
                                                                      .push(
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              ImageViewFullScreen(
                                                                        imageFile: profileCon
                                                                            .imagePath
                                                                            .value,
                                                                        isImageFile: profileCon.imagePath.value.isNotEmpty
                                                                            ? true
                                                                            : false,
                                                                        isUrl: e.value.isLatest == true ||
                                                                                e.value.imageUrl!.isNotEmpty && profileCon.imagePath.value.isEmpty
                                                                            ? true
                                                                            : false,
                                                                        urlImage: e
                                                                            .value
                                                                            .imageUrl,
                                                                      ),
                                                                      maintainState:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                              CustomSeletedItemWidget(
                                                                label:
                                                                    'Gallery',
                                                                onTap:
                                                                    () async {
                                                                  profileCon
                                                                      .pickedImage(
                                                                    ImageSource
                                                                        .gallery,
                                                                  );
                                                                  profileCon
                                                                      .onSubmitProfilePicutre();

                                                                  profileCon
                                                                      .update();
                                                                  context.pop();
                                                                },
                                                              ),
                                                              CustomSeletedItemWidget(
                                                                label: 'Camera',
                                                                onTap: () {
                                                                  profileCon
                                                                      .pickedImage(
                                                                    ImageSource
                                                                        .camera,
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0),
                                                            child:
                                                                CustomSeletedItemWidget(
                                                              label: 'Cancel',
                                                              onTap: () {
                                                                context.pop();
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white,
                                                  ),
                                                  child: const Icon(
                                                    Icons.camera_alt_outlined,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${profileCon.userProfileModel.value.email}"
                                                    .replaceAll(
                                                        RegExp(
                                                            '(?<=.)[^@](?=[^@]*?[^@]@)'),
                                                        '*'),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color(
                                                            0xff9E9E9E)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                  return const SizedBox();
                                }).toList(),
                              )
                            : Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        profileCon.isLoadingPickedImage.value
                                            ? Shimmer.fromColors(
                                                baseColor: Colors.grey.shade300,
                                                highlightColor:
                                                    Colors.grey.shade400,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              )
                                            : Container(
                                                height: 60,
                                                width: 60,
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: profileCon
                                                        .imagePath.isEmpty
                                                    ? Image.asset(
                                                        'assets/image/profile.png')
                                                    : Image.file(
                                                        File(
                                                          '${profileCon.imagePath}',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                              ),
                                        Positioned(
                                          bottom: -5.0,
                                          right: 0.0,
                                          child: InkWell(
                                            onTap: () {
                                              onShowBottomSheet(
                                                isDimissible: false,
                                                enableDrag: false,
                                                context: context,
                                                height: context.height * 1 / 3,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 15.0,
                                                      horizontal: 20.0),
                                                  height:
                                                      context.height * 1 / 2.6,
                                                  child: Column(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CustomSeletedItemWidget(
                                                            label: 'View Photo',
                                                            onTap: () {
                                                              context.pop();
                                                              Navigator.of(
                                                                      context,
                                                                      rootNavigator:
                                                                          true)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) {
                                                                    return ImageViewFullScreen(
                                                                      isUrl:
                                                                          false,
                                                                      urlImage:
                                                                          'assets/image/profile.png',
                                                                      imageFile:
                                                                          '${profileCon.imagePath}',
                                                                      isImageFile: profileCon
                                                                              .imagePath
                                                                              .isEmpty
                                                                          ? false
                                                                          : true,
                                                                    );
                                                                  },
                                                                  maintainState:
                                                                      false,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          CustomSeletedItemWidget(
                                                            label: 'Gallery',
                                                            onTap: () async {
                                                              profileCon
                                                                  .pickedImage(
                                                                ImageSource
                                                                    .gallery,
                                                              );
                                                              profileCon
                                                                  .update();
                                                              context.pop();
                                                              Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          800),
                                                                  () {
                                                                if (profileCon
                                                                    .imagePath
                                                                    .isNotEmpty) {
                                                                  profileCon
                                                                      .onSubmitProfilePicutre();
                                                                }
                                                              });
                                                            },
                                                          ),
                                                          CustomSeletedItemWidget(
                                                            label: 'Camera',
                                                            onTap: () {
                                                              profileCon
                                                                  .pickedImage(
                                                                ImageSource
                                                                    .camera,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 8.0),
                                                        child:
                                                            CustomSeletedItemWidget(
                                                          label: 'Cancel',
                                                          onTap: () {
                                                            context.pop();
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: const Icon(
                                                Icons.camera_alt_outlined,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${profileCon.userProfileModel.value.email}"
                                                .replaceAll(
                                                    RegExp(
                                                        '(?<=.)[^@](?=[^@]*?[^@]@)'),
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
                                                    color: const Color(
                                                        0xff9E9E9E)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
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
                              lastText: profileCon
                                      .userProfileModel.value.phoneNumber ??
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                  ),
                                                ),
                                                TextButton(
                                                  child: const Text('Done'),
                                                  onPressed: () {
                                                    profileCon
                                                        .onSubmitUserDOB();
                                                    profileCon
                                                        .fecthUserProfile();
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
                                              mode:
                                                  CupertinoDatePickerMode.date,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        margin: const EdgeInsets.only(top: 10.0),
                        color: Colors.white,
                        child: CustomSettingRow(
                          title: 'View Order',
                          onTap: () {
                            debugPrint('onTap');
                            context.push('/view-order');
                            viewOrderCon.fetchOrderProducts();
                          },
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: CustomSettingRow(
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
                              },
                            );
                          },
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     debugPrint('one: ');
                      //     // profileCon.upload(File(profileCon.imagePath.value));
                      //     profileCon.onSubmitProfilePicutre();
                      //   },
                      //   child: const Text('Hello'),
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
                                // await authController.onlogout();
                                await authController.onlogout();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
