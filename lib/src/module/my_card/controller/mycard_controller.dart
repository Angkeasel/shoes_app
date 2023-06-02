import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCardController extends GetxController {
  var slide = 0.obs;
  var visaCardList = [
    VisaCardModel(
        colors: Colors.red,
        date: "02/30",
        nameCard: "M-Card",
        name: "Anny Jolly",
        number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234"),
    VisaCardModel(
        date: "03/30",
        colors: Colors.purple,
        nameCard: "M-Card",
        name: "Anny Jolly",
        number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234"),
    VisaCardModel(
        date: "04/30",
        colors: Colors.blue,
        nameCard: "M-Card",
        name: "Anny Jolly",
        number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234"),
    VisaCardModel(
        date: "05/30",
        colors: Colors.yellow,
        nameCard: "M-Card",
        name: "Anny Jolly",
        number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234"),
    VisaCardModel(
        date: "06/30",
        colors: Colors.green,
        nameCard: "M-Card",
        name: "Anny Jolly",
        number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234"),
  ].obs;

  List<SettingModel> settingList = [
    SettingModel(
      svg: 'assets/svg/Shield Fail.svg',
      title: 'Change PIN',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Vector.svg',
      title: 'Change Limit',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Time Circle.svg',
      title: 'Temporarily Block',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Close Square.svg',
      title: 'Permanent Block',
      ontap: () {},
    ),
  ];

  List<SettingModel> settingEcardList = [
    SettingModel(
      svg: 'assets/svg/Vector.svg',
      title: 'Change Limit',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Download copy.svg',
      title: 'Top Up',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Upload.svg',
      title: 'Refund',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Shield Fail.svg',
      title: 'Temporarily Block',
      ontap: () {},
    ),
    SettingModel(
      svg: 'assets/svg/Close Square.svg',
      title: 'Permanent Block',
      ontap: () {},
    ),
  ];
}

///
///
class VisaCardModel {
  String? nameCard;
  String? number;
  String? name;
  String? date;
  Color? colors;
  VisaCardModel(
      {this.nameCard, this.colors, this.number, this.name, this.date});
}

class SettingModel {
  String? svg;
  String? title;
  GestureTapCallback? ontap;

  SettingModel({this.svg, this.title, this.ontap});
}

class SettingModelEcard {
  String? svg;
  String? title;
  GestureTapCallback? ontap;

  SettingModelEcard({this.svg, this.title, this.ontap});
}

// class SlideModel {
//   String? nameCard;
//   String? number;
//   String? name;
//   String? date;
//   SlideModel({this.nameCard, this.number, this.name, this.date});
// }
