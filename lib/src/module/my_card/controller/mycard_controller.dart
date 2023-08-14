import 'package:allpay/src/module/my_card/model/mycard/my_card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/api_base_herper.dart';

class MyCardController extends GetxController {
  /// for used present

  ApiBaseHelper api = ApiBaseHelper();
  var myCardList = <MyCardModel>[].obs;

  final ValueNotifier counter = ValueNotifier(1);

  num get getTotalCost => myCardList.isNotEmpty
      ? myCardList.fold(
          0, (previousValue, element) => previousValue + (element.price ?? 0))
      : 0;

  final loadingCart = false.obs;
  Future<List<MyCardModel>> getMyCard({bool loading = true}) async {
    try {
      if (loading) {
        loadingCart(true);
      }
      await api
          .onNetworkRequesting(
              url: "cart", methode: METHODE.get, isAuthorize: true)
          .then((value) {
        myCardList.clear();
        value.map((e) {
          myCardList.add(MyCardModel.fromJson(e));
        }).toList();
      }).onError((ErrorModel error, _) {
        debugPrint(' =======>Error Body :${error.bodyString}');
      });
    } catch (e) {
      debugPrint(' =======>Error Body :${e.toString()}');
    } finally {
      loadingCart(false);
    }
    return myCardList;
  }
}
