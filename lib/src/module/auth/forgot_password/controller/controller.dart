import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  var isSelect = 0.obs;

  List<Contactfill> contactFilllist = [
    Contactfill(
      svg: "assets/svg/chat.svg",
      text: "+1 111******99",
      title: "Vai SMS",
    ),
    Contactfill(
      svg: "assets/svg/email.svg",
      text: "dar*****op@gmail.com",
      title: "Vai SMS",
    )
  ];
}

class Contactfill {
  String? svg;
  String? text;
  String? title;
  Contactfill({
    this.svg,
    this.text,
    this.title,
  });
}
