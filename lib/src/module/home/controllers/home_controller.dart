import 'package:allpay/src/module/home/models/product/big_product_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/catagary/catagary_model.dart';
import '../models/detail_model.dart';
import '../models/product/product_model.dart';
import '../models/product_details/product_details_model.dart';
import '../models/slide/slide_model.dart';

class HomeController extends GetxController {
  ApiBaseHelper api = ApiBaseHelper();
  TextEditingController searchController = TextEditingController();
  var searchList = <ProductModel>[].obs;
  var currentPage = 0.obs;
  var totalPage = 1.obs;
  var bigProductModel = BigProductModel().obs;

  //==============================>Get catagary<==============================
  final categoryList = <CategoryModel>[].obs;

  final selectedCategory = 'all shoes'.obs;

  Future<List<CategoryModel>> getCategory() async {
    List<CategoryModel> categoryTempList = [];
    try {
      await api
          .onNetworkRequesting(
              url: "category", methode: METHODE.get, isAuthorize: true)
          .then((value) {
        debugPrint("========>CategoryList$value");
        value.map((e) {
          categoryTempList.add(CategoryModel.fromJson(e));
        }).toList();

        categoryList.assignAll(categoryTempList);
        debugPrint("========>CategoryList $categoryList");
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('=======>Error Body :${error.bodyString}');
      });
    } catch (e) {
      debugPrint('======>Error Body catch :${e.toString()}');
    }
    return categoryList;
  }

  //====================================> Get product<=======================
  final productList = <ProductModel>[].obs;
  final productModel = ProductModel().obs;
  final isLoadingPro = false.obs;
  Future<BigProductModel> getProduct({
    String? quary,
    int? page,
  }) async {
    isLoadingPro(true);

    try {
      await api
          .onNetworkRequesting(
              url: "products?page=$page&size=10&name=$quary",
              methode: METHODE.get,
              isAuthorize: false)
          .then((value) {
        bigProductModel.value = BigProductModel.fromJson(value);
        debugPrint('=========> product$value');
        if (currentPage.value == 0) {
          productList.clear();
          // clear list before we add
        }

        debugPrint("val: $value");
        value['data'].map((e) {
          productModel.value = ProductModel.fromJson(e);
          if (!productList.contains(productModel.value)) {
            productList.add(productModel.value);
          }

          print("length ${productList.length}");
        }).toList();
        currentPage.value++;
        totalPage.value = bigProductModel.value.totalPages!;

        debugPrint('==========> get List pro:$productList');
        isLoadingPro(false);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('=======>Error Body :${error.bodyString}');
      });
    } catch (e) {
      debugPrint('======>123Error Body catch :${e.toString()}');
    }
    isLoadingPro(false);
    return bigProductModel.value;
  }

  //=================================> get Product detail<==========================
  final isLoadingDetails = false.obs;
  ProductDetailsModel proDetailsModel = ProductDetailsModel();
  Future<ProductDetailsModel> getProductDetails(int? id) async {
    isLoadingDetails(true);
    try {
      await api
          .onNetworkRequesting(
              url: "product/$id", methode: METHODE.get, isAuthorize: true)
          .then((value) {
        proDetailsModel = ProductDetailsModel.fromJson(value);
        debugPrint('=========proDetailsModel>$proDetailsModel');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('=======>Error Body :${error.bodyString}');
      });
      isLoadingDetails(false);
    } catch (e) {
      debugPrint('======>Error Body catch :${e.toString()}');
    }
    isLoadingDetails(false);
    return proDetailsModel;
  }

  //=================================> post Favorited <==========================
  Future<void> addFavorite(int? productId, int? variantId) async {
    try {
      await api.onNetworkRequesting(
          url: 'favorite',
          methode: METHODE.post,
          isAuthorize: true,
          body: {
            'product_id': productId,
            'variant_id': variantId
          }).then((value) {
        debugPrint('=================> post favorited$value');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(
            "==========================> Error Body catch : ${error.bodyString}");
      });
    } catch (e) {
      debugPrint(
          "==========================> catch post fav : ${e.toString()}");
    }
  }

  //=================================> get Favorited <==========================
  final favList = <ProductModel>[].obs;
  final favBigProductModel = BigProductModel().obs;
  final favProductModel = ProductModel().obs;
  Future<BigProductModel> getFavorite(int? productId, int? variantId) async {
    try {
      await api
          .onNetworkRequesting(
        url: 'favorite',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((value) {
        favBigProductModel.value = BigProductModel.fromJson(value);
        debugPrint('=================> get favorited$value');
        value['data'].map((e) {
          favProductModel.value = ProductModel.fromJson(e);
          favList.add(favProductModel.value);
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(
            "==========================> Error Body catch : ${error.bodyString}");
      });
    } catch (e) {
      debugPrint("==========================> catch get fav : ${e.toString()}");
    }
    return favBigProductModel.value;
  }

  //=================================> Deleted Favorited <==========================
  Future<void> delFavorite(int id) async {
    try {
      await api
          .onNetworkRequesting(
              url: "favorite/$id", methode: METHODE.delete, isAuthorize: true)
          .then((value) {
        debugPrint('=================> detele favorited$value');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(
            "==========================> Error Body catch : ${error.bodyString}");
      });
    } catch (e) {
      debugPrint(
          "==========================> catch delete fav : ${e.toString()}");
    }
  }

  // =================================> get category by id <==========================
  final categoryProductModel = BigProductModel().obs;
  final categoryProductList = <ProductModel>[].obs;
  final categoryDataModel = ProductModel().obs;
  final isLoadingCategory = false.obs;
  final pageCategory = 0.obs;
  Future<BigProductModel> getCategoryById({int? id, int? page}) async {
    isLoadingCategory(true);
    try {
      await api
          .onNetworkRequesting(
              url: "product-by-category-id/$id?page=$page&size=10",
              methode: METHODE.get,
              isAuthorize: true)
          .then((value) {
        categoryProductModel.value = BigProductModel.fromJson(value);
        debugPrint('=================> product by category$value');
        categoryProductList.clear();
        value['data'].map((e) {
          categoryDataModel.value = ProductModel.fromJson(e);
          categoryProductList.add(categoryDataModel.value);
        }).toList();
        debugPrint(
            '=================> categoryProductList $categoryProductList');
        pageCategory.value++;
        //  totalPage.value = bigProductModel.value.totalPages!;
        isLoadingCategory(false);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint(
            "==========================> Error Body catch category : ${error.bodyString}");
      });
    } catch (e) {
      debugPrint(
          "==========================> catch category by id : ${e.toString()}");
    }
    isLoadingCategory(false);
    return categoryProductModel.value;
  }

  //================================> Slide card<======================================
  final slideList = <SlideModel>[].obs;
  final slideModel = SlideModel().obs;

  Future<List<SlideModel>> getSlide() async {
    isLoadingPro(true);
    try {
      await api
          .onNetworkRequesting(
              url: "slide", methode: METHODE.get, isAuthorize: false)
          .then((value) {
        slideList.clear();
        value.map((e) {
          slideModel.value = SlideModel.fromJson(e);
          slideList.add(slideModel.value);
        }).toList();
        debugPrint('=================> slideList${slideList.length}');
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('============> catch error slide :${error.bodyString}');
      });
      isLoadingPro(false);
    } catch (e) {
      debugPrint('============> catch error ${e.toString()}');
    }
    isLoadingPro(false);
    return slideList;
  }

  //// Select Category;
  final indexCategory = 0.obs;
  final stockValue = 0.obs;
  final imageStock = ''.obs;
  ///// Add card
  final a = 0.obs;
  final totalCard = 1.obs;
  final subTotal = 0.0.obs;
  final totalCost = 0.0.obs;
  final ValueNotifier<int> counter = ValueNotifier<int>(1);

  ///fun add
  // void AddToCard() {
  //   a.value = counter.value++;
  //   totalCard.value = a.value + 1;
  //   subTotal.value = myCartList[0].price! * totalCard.value;
  //   totalCost.value = subTotal.value + 1.00;
  // }

  // void RemoveCard() {
  //   if (totalCard > 1) {
  //     a.value = counter.value--;
  //     totalCard.value = a.value - 1;
  //     subTotal.value = subTotal.value - myCartList[0].price!;
  //     totalCost.value = totalCost.value - myCartList[0].price!;
  //   }
  // }

  // final servicesList = [];
  var currentIndex = 0.obs;
  final currentIndexfav = 0.obs;
  final isSelectedIndex = 0.obs;
  final isOverFlow = true.obs;
  final imagesModel = ImagesModel().obs;
  final eachPrice = 0.0.obs;
  final isfav = false.obs;
  var favCartList = <ProductDetailsModel>[].obs;
  //var myCartList = <DetailModel>[].obs;

  List<DetailModel> detailsModelList = [
    DetailModel(
        title: 'Nike Jordan',
        recordType: "Women's Shoes",
        price: 100,
        isFav: true,
        delivery: 1.00,
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
        delivery: 1.00,
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
        delivery: 1.00,
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
