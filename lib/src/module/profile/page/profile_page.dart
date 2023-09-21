import 'dart:io';

import 'package:allpay/src/module/auth/sign_in/controller/contoller.dart';
import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:allpay/src/module/profile/page/term_and_condition.dart';
import 'package:allpay/src/module/profile/widget/custom_seleted_item_widget.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:allpay/src/widget/custom_bottomshet.dart';
import 'package:allpay/src/widget/custom_image_view_full_screen.dart';
import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constant/app_setting.dart';
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
                        child: profileCon.userProfileModel.value.profiles
                                    ?.isNotEmpty ==
                                true
                            ? Column(
                                children: profileCon
                                    .userProfileModel.value.profiles!
                                    .asMap()
                                    .entries
                                    .map((e) {
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
                                                                      isImageFile: profileCon
                                                                              .imagePath
                                                                              .value
                                                                              .isNotEmpty
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
                                                              label: 'Gallery',
                                                              onTap: () async {
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
                                                "${profileCon.userProfileModel.value.firstName} ${profileCon.userProfileModel.value.lastName}",
                                                // .replaceAll(
                                                //     RegExp(
                                                //         '(?<=.)[^@](?=[^@]*?[^@]@)'),
                                                //     '*'),
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
                            : Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          profileCon.isLoadingPickedImage.value
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
                                                  height:
                                                      context.height * 1 / 3,
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
                                                );
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4),
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
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${profileCon.userProfileModel.value.firstName} ${profileCon.userProfileModel.value.lastName}",
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
                      const SizedBox(height: 16),
                      CustomSettingRow(
                        title: 'My Account',
                        onTap: () {
                          debugPrint('onTap');
                          context.push('/profile/-rourter/edit-profile');
                        },
                      ),
                      CustomSettingRow(
                        title: 'Notification',
                        onTap: () {
                          context.push('/mycart/-rourter');
                        },
                      ),
                      // CustomSettingRow(
                      //   title: 'Language',
                      //   onTap: () {},
                      // ),
                      const SizedBox(height: 16),
                      CustomSettingRow(
                        title: 'My Order',
                        onTap: () {
                          context.push('/view-order');
                          debugPrint('onTap');

                          viewOrderCon.fetchOrderProducts();
                        },
                      ),
                      CustomSettingRow(
                        title: 'My Favourite',
                        onTap: () {
                          context.push('/fav');
                          debugPrint('onTap');
                        },
                      ),
                      const SizedBox(height: 16),

                      // CustomSettingRow(
                      //   title: 'Term and Condition',
                      //   onTap: () {
                      //     Get.to(() => const TermAndCondition());
                      //   },
                      // ),
                      // CustomSettingRow(
                      //   title: 'Policy Privacy',
                      //   onTap: () {
                      //     debugPrint('onTap');
                      //   },
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
