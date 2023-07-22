import 'package:allpay/src/module/favourite/controller/favourite_base.dart';
import 'package:allpay/src/module/home/models/product/product_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController
    with ApiBaseHelper, FavouriteBase {
  @override
  Future<void> addToFavourite(int id) async {
    await onNetworkRequesting(
      url: 'favorite',
      methode: METHODE.post,
      isAuthorize: true,
      body: {
        "product_id": id,
      },
    ).then((value) {
      debugPrint('addToFavourite Success : $value');
    }).onError((ErrorModel error, _) {
      debugPrint('addToFavourite Error : ${error.bodyString}');
    });
  }

  @override
  Future<void> removeFavourite(int id) async {
    await onNetworkRequesting(
      url: 'favorite/$id',
      methode: METHODE.delete,
      isAuthorize: true,
    ).then((value) {
      debugPrint('deleletFavourite Success : $value');
    }).onError((ErrorModel error, _) {
      debugPrint('deleletFavourite Error : ${error.bodyString}');
    });
  }

  final fetchFavListLoading = false.obs;

  final favouriteList = <ProductModel>[].obs;

  @override
  Future<List<ProductModel>> getFavouritsList({int page = 0}) async {
    fetchFavListLoading(true);
    List<ProductModel> favList = [];

    await onNetworkRequesting(
      url: 'favorite',
      methode: METHODE.get,
      isAuthorize: true,
    ).then((body) {
      debugPrint('Success $body');
      body['data'].map((e) {
        favList.add(ProductModel.fromJson(e['product']));
      }).toList();
      fetchFavListLoading(false);
      favouriteList.assignAll(favList);
    }).onError(
      (ErrorModel error, _) {
        fetchFavListLoading(false);
        debugPrint('Fetch FavouriteList Error : ${error.statusCode}');
      },
    );

    return favList;
  }
}
