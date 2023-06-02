import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/detail_model.dart';
import '../models/model_home.dart';

class HomeController extends GetxController {
  //// Select Category
  final indexCategory = 0.obs;
  ///// Add card
  final a = 0.obs;
  final totalCard = 1.obs;
  final subTotal = 0.0.obs;
  final totalCost = 0.0.obs;
  final ValueNotifier<int> counter = ValueNotifier<int>(1);

  ///fun add
  void AddToCard() {
    a.value = counter.value++;
    totalCard.value = a.value + 1;
    subTotal.value = myCartList[0].price! * totalCard.value;
    totalCost.value = subTotal.value + 1.00;
  }

  void RemoveCard() {
    if (totalCard > 1) {
      a.value = counter.value--;
      totalCard.value = a.value - 1;
      subTotal.value = subTotal.value - myCartList[0].price!;
      totalCost.value = totalCost.value - myCartList[0].price!;
    }
  }

  // final servicesList = [];
  final currentIndex = 0.obs;
  final currentIndexfav = 0.obs;
  final isSelectedIndex = 0.obs;
  final isOverFlow = true.obs;
  final imagesModel = ImagesModel().obs;
  final eachPrice = 0.0.obs;
  final isfav = false.obs;
  var favCartList = <DetailModel>[].obs;
  var myCartList = <DetailModel>[].obs;
  // var myCartListFromDetails = <ImagesModel>[].obs;

  var categoryList = [
    CategoryModel(namecategory: 'All Shoes'),
    CategoryModel(namecategory: 'Ourdoor'),
    CategoryModel(namecategory: 'Tennis'),
  ];
  var popularList = [
    PopcularModel(image: 'assets/png/red_nike.png', price: 123, title: 'NIKE'),
    PopcularModel(image: 'assets/png/red_nike.png', price: 123, title: 'NIKE'),
  ];
  List<DetailModel> detailsModelList = [
    DetailModel(
        title: 'Nike Jordan',
        recordType: "Women's Shoes",
        price: 100,
        isFav: true,
        delivery:1.00,
        description:
            'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike',
        images: [
          ImagesModel(
            title: 'Nike Jordan',
            eachPrice: 100,
            gallary:
                'assets/image/1646394313-zoomx-streakfly-road-racing-shoes-lrCMPz.png',
            sized: [
              SizeModel(
                sized: '36',
              ),
              SizeModel(
                sized: '37',
              ),
            ],
          ),
          ImagesModel(
              title: 'Nike Jordan',
              eachPrice: 120,
              gallary: 'assets/image/Nike-Shoes-Air-Max-PNG-Images.png',
              sized: [
                SizeModel(sized: '37'),
                SizeModel(sized: '39'),
                SizeModel(sized: '42'),
              ]),
          ImagesModel(
              title: 'Nike Jordan',
              eachPrice: 120,
              gallary: 'assets/image/Aire Jordan Nike.png',
              sized: [
                SizeModel(sized: '38'),
                SizeModel(sized: '39'),
              ]),
          ImagesModel(
              title: 'Nike Jordan',
              eachPrice: 130,
              gallary: 'assets/image/luis.png',
              sized: [
                SizeModel(sized: '36'),
                SizeModel(sized: '37'),
              ]),
        ]),
    DetailModel(
        title: 'Nike Air Max 270 Essential',
        recordType: "Men's Shoes",
        isFav: false,
        price: 140,
         delivery:1.00,
        description:
            'Celebrate every mile with these festive road runners. Whether you prefer an extended route at sunrise or a quick jog at sunset, running is your daily ritual, and you need shoes just as dedicated. A comfortable, intuitive design provides a supportive sensation to help your foot feel contained while responsive Zoom Air cushioning adds a spring to your stride. Plus, colorful confetti-inspired graphic accents add fresh energy to your run. Your trusted workhorse with wings is back. Time to fly.',
        images: [
          ImagesModel(
              title: 'Nike Air Max 270 Essential',
              eachPrice: 140,
              gallary: 'assets/image/luis.png',
              sized: [
                SizeModel(sized: '37'),
                SizeModel(sized: '40'),
              ]),
          ImagesModel(
              title: 'Nike Air Max 270 Essential',
              eachPrice: 130,
              gallary: 'assets/image/Nike-Shoes-Air-Max-PNG-Images.png',
              sized: [
                SizeModel(sized: '36'),
                SizeModel(sized: '37'),
              ]),
        ]),
        DetailModel(
        title: 'Nike Air Max 270 Essential',
        recordType: "Men's Shoes",
        isFav: false,
        price: 140,
         delivery:1.00,
        description:
            'Celebrate every mile with these festive road runners. Whether you prefer an extended route at sunrise or a quick jog at sunset, running is your daily ritual, and you need shoes just as dedicated. A comfortable, intuitive design provides a supportive sensation to help your foot feel contained while responsive Zoom Air cushioning adds a spring to your stride. Plus, colorful confetti-inspired graphic accents add fresh energy to your run. Your trusted workhorse with wings is back. Time to fly.',
        images: [
          ImagesModel(
              title: 'Nike Air Max 270 Essential',
              eachPrice: 140,
              gallary: 'assets/image/luis.png',
              sized: [
                SizeModel(sized: '37'),
                SizeModel(sized: '40'),
              ]),
          ImagesModel(
              title: 'Nike Air Max 270 Essential',
              eachPrice: 130,
              gallary: 'assets/image/Nike-Shoes-Air-Max-PNG-Images.png',
              sized: [
                SizeModel(sized: '36'),
                SizeModel(sized: '37'),
              ]),
        ]),
  ];
}
