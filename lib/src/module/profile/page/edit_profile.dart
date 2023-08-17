import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/profile/controller/profile_controller.dart';
import 'package:allpay/src/module/profile/widget/custom_seleted_item_widget.dart';
import 'package:allpay/src/module/profile/widget/custom_setting_row.dart';
import 'package:allpay/src/util/custom_lable_icon.dart';
import 'package:allpay/src/util/show_select_gender.dart';
import 'package:allpay/src/widget/custom_bottomshet.dart';
import 'package:allpay/src/widget/custom_image_view_full_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final profileCon = Get.put(ProfileController());
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

  // String getDate() {
  //   if (selectedDate == DateTime.now()) {
  //     return 'select date';
  //   } else {
  //     return DateFormat('MMM d, yyyy').format(selectedDate);
  //   }
  // }

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
      body: Obx(
        () => profileCon.isLoadingProfile.value ||
                profileCon.isLoadingGender.value ||
                profileCon.isLoadingOnSubmittedDOB.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        profileCon.userProfileModel.value.profiles!.isNotEmpty
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
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20,
                                          right: 5,
                                          bottom: 20,
                                          top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Photo",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.amber,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  "${e.value.imageUrl}",
                                                ),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
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
                                                                    isUrl: e.value.isLatest ==
                                                                                true ||
                                                                            e.value.imageUrl!.isNotEmpty &&
                                                                                profileCon.imagePath.value.isEmpty
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
                                            icon: const Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  return const SizedBox();
                                }).toList(),
                              )
                            : Column(
                                children: profileCon
                                    .userProfileModel.value.profiles!
                                    .asMap()
                                    .entries
                                    .map((e) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 5,
                                        bottom: 20,
                                        top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Photo",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
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
                                          onPressed: () {
                                            onShowBottomSheet(
                                              isDimissible: false,
                                              enableDrag: false,
                                              context: context,
                                              height: context.height * 1 / 3,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                                                    (context) =>
                                                                        ImageViewFullScreen(
                                                                  imageFile:
                                                                      profileCon
                                                                          .imagePath
                                                                          .value,
                                                                  isImageFile: profileCon
                                                                          .imagePath
                                                                          .value
                                                                          .isNotEmpty
                                                                      ? true
                                                                      : false,
                                                                  isUrl: e.value.isLatest ==
                                                                              true ||
                                                                          e.value.imageUrl!.isNotEmpty &&
                                                                              profileCon.imagePath.value.isEmpty
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

                                                            profileCon.update();
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
                                                          const EdgeInsets.only(
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
                                          icon: const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Account ID",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "DIP0001",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: AppColor.grey1Color),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 15, bottom: 15, right: 10),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              CustomSettingRow(
                                title: 'Name',
                                lastText:
                                    '${profileCon.userProfileModel.value.firstName}\t'
                                    '${profileCon.userProfileModel.value.lastName}',
                                isLastText: true,
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
                                    profileCon.userGendermodel.value.value ??
                                        '',
                                onTap: () {
                                  onShowBottomSheetGender(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
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
                                              "======>e.value${e.value}");
                                          debugPrint(
                                              "======>${profileCon.indexGen.value}");
                                          debugPrint(
                                              "======>Gender${profileCon.titleGen.value}");
                                          // if (profileCon.userGendermodel.value
                                          //     .value!.isEmpty) {
                                          profileCon.onSubmitUserGender();
                                          // } else {
                                          // profileCon.onUpdateUserGender(
                                          //     id: profileCon
                                          //         .userGendermodel.value.id);
                                          // }
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
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                                initialDateTime: profileCon
                                                    .dateOfBirth.value,
                                                onDateTimeChanged: (newDate) {
                                                  profileCon.dateOfBirth.value =
                                                      newDate;
                                                  debugPrint(
                                                      'OldData: ${profileCon.dateOfBirth.value}');
                                                },
                                                use24hFormat: true,
                                                mode: CupertinoDatePickerMode
                                                    .date,
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
                      ],
                    ),
                  ),
                ],
              ),
      ),
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
            // final item = items[index];
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
