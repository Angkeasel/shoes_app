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
  final loadingFetchAllProduct = false.obs;
  Future<BigProductModel> getProduct({
    String? query,
    int? page,
  }) async {
    loadingFetchAllProduct(true);

    try {
      await api
          .onNetworkRequesting(
              url: "products?page=$page&size=10&name=$query",
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
        loadingFetchAllProduct(false);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('=======>Error Body :${error.bodyString}');
      });
    } catch (e) {
      debugPrint('======>123Error Body catch :${e.toString()}');
    }
    loadingFetchAllProduct(false);
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

  // =================================> get category by id <==========================
  final categoryProductModel = BigProductModel().obs;
  final categoryProductList = <ProductModel>[].obs;
  final categoryDataModel = ProductModel().obs;
  final isLoadingCategory = false.obs;
  final productListByCategoryIdPage = 0.obs;
  Future<BigProductModel> getProductsListByCategoryId({
    required int? id,
    required int? page,
  }) async {
    isLoadingCategory(true);
    final url = id == null
        ? 'products?page=$page'
        : "product-by-category-id/$id?page=$page&size=10";
    try {
      await api
          .onNetworkRequesting(
        url: url,
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then(
        (value) {
          categoryProductModel.value = BigProductModel.fromJson(value);
          debugPrint('=================> product by category$value');
          categoryProductList.clear();
          value['data'].map(
            (e) {
              categoryDataModel.value = ProductModel.fromJson(e);
              categoryProductList.add(categoryDataModel.value);
            },
          ).toList();
          debugPrint(
              '=================> categoryProductList $categoryProductList');
          productListByCategoryIdPage.value++;
          //  totalPage.value = bigProductModel.value.totalPages!;
          isLoadingCategory(false);
        },
      ).onError((ErrorModel error, stackTrace) {
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
  final loadingSlide = false.obs;

  Future<List<SlideModel>> getSlide() async {
    List<SlideModel> slidesLi = [];
    loadingSlide(true);

    await api
        .onNetworkRequesting(
            url: "slide", methode: METHODE.get, isAuthorize: true)
        .then((value) {
      value.map((e) {
        slidesLi.add(SlideModel.fromJson(e));
      }).toList();
      slideList.assignAll(slidesLi);
      loadingSlide(false);
    }).onError((ErrorModel error, _) {
      loadingSlide(false);
    });

    return slidesLi;
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
}
