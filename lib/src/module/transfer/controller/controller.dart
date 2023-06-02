import 'package:allpay/src/module/transfer/model/model.dart';
import 'package:get/get.dart';

class ControllerTransfer extends GetxController {
  var subtitle = "".obs;
  var accountNum = "".obs;
  var image = "".obs;
  var bank = "".obs;
  var title = "".obs;
  var money = "".obs;
  var number = "\$".obs;
  var salary = "salary".obs;
  var noted = "".obs;

  var listUser = <TransferModel>[
    TransferModel(
        image:
            "https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU=",
        title: "Aileen Fullbright",
        subtitle: "Bank | 12345678",
        star: "assets/png/yellow_star.png",
        bank: "bank",
        account: "00022111"),
    TransferModel(
        image:
            "https://i.insider.com/59b6c4bfba785e36f932a317?width=600&format=jpeg&auto=webp",
        title: "Aileen Fullbright",
        subtitle: "E-Wallet | +1-123-345-1234",
        star: "assets/png/star_black.png",
        bank: "bank",
        account: "30023453"),
    TransferModel(
        image:
            "https://media.istockphoto.com/photos/studio-portrait-of-attractive-19-year-old-woman-with-brown-hair-picture-id1344327532?b=1&k=20&m=1344327532&s=170667a&w=0&h=aqh_117UeU73q6fdesYZlI1X6p1dULM33gKo3RBP-xs=",
        title: "Aileen Fullbright",
        subtitle: "Bank | 12345678",
        star: "assets/png/yellow_star.png",
        bank: "bank",
        account: "11002133"),
    TransferModel(
        image:
            "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
        title: "Aileen Fullbright",
        subtitle: "E-Wallet | +1-123-345-1234",
        star: "assets/png/star_black.png",
        bank: "bank",
        account: "88000031"),
    TransferModel(
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
        title: "Aileen Fullbright",
        subtitle: "Bank | 12345678",
        star: "assets/png/yellow_star.png",
        bank: "bank",
        account: "80003025"),
    TransferModel(
        image:
            "https://i.pinimg.com/736x/55/a5/89/55a589c4c118141188f1396ebada5e9b.jpg",
        title: "Aileen Fullbright",
        subtitle: "E-Wallet | +1-123-345-1234",
        star: "assets/png/star_black.png",
        bank: "bank",
        account: "00019871"),
    TransferModel(
        image:
            "https://image.shutterstock.com/image-photo/profile-picture-smiling-millennial-asian-260nw-1836020740.jpg",
        title: "Aileen Fullbright",
        subtitle: "Bank | 12345678",
        star: "assets/png/yellow_star.png",
        bank: "bank",
        account: "91100002"),
    TransferModel(
        image:
            "https://images.unsplash.com/photo-1594751543129-6701ad444259?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFyayUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
        title: "Aileen Fullbright",
        subtitle: "E-Wallet | +1-123-345-1234",
        star: "assets/png/star_black.png",
        bank: "bank",
        account: "00029321"),
  ];
}
