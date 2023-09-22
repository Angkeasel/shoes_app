import 'dart:math';

import 'package:allpay/src/module/home/models/product/big_product_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:allpay/src/util/loading/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../util/alert_snackbar.dart';
import '../../my_card/controller/mycard_controller.dart';
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

    final url = "products?name=$query";

    print("URL : $url");
    try {
      await api
          .onNetworkRequesting(
        url: url,
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((value) {
        bigProductModel.value = BigProductModel.fromJson(value);
        debugPrint('=========> product ${value.length}');
        if (currentPage.value == 0) {
          productList.clear();
          // clear list before we add
        }

        debugPrint("Length : ${value.length}");
        value['data'].map((e) {
          productModel.value = ProductModel.fromJson(e);
          if (!productList.contains(productModel.value)) {
            productList.add(productModel.value);
          }

          print("length ${productList.length}");
        }).toList();
        currentPage.value++;
        totalPage.value = bigProductModel.value.totalPages ?? 0;

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

  ///
  final listSearchProduct = <ProductModel>[].obs;
  final loadingSearchResult = false.obs;
  Future<List<ProductModel>> searchProductByName({
    required String? textSearch,
  }) async {
    loadingSearchResult(true);
    final listSearchProd = <ProductModel>[];

    final url = "products?name=${textSearch ?? ''}";

    try {
      await api
          .onNetworkRequesting(
        url: url,
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((responseBody) {
        responseBody['data'].map((e) {
          listSearchProd.add(ProductModel.fromJson(e));
        }).toList();

        listSearchProduct.assignAll(listSearchProd);

        loadingSearchResult(false);
      }).onError((ErrorModel error, _) {
        debugPrint('=======>Error Body :${error.bodyString}');
      });
    } catch (e) {
      debugPrint('Error :${e.toString()}');
    }
    loadingSearchResult(false);

    return listSearchProd;
  }

  //=================================> get Product detail<==========================
  final isLoadingDetails = false.obs;
  ProductDetailsModel proDetailsModel = ProductDetailsModel();
  Future<ProductDetailsModel> getProductDetails(int? id) async {
    isLoadingDetails(true);
    try {
      await api
          .onNetworkRequesting(
        url: "product/$id",
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then(
        (value) {
          proDetailsModel = ProductDetailsModel.fromJson(value);
          debugPrint('=========proDetailsModel>$proDetailsModel');
        },
      ).onError(
        (ErrorModel error, stackTrace) {
          debugPrint('=======>Error Body :${error.bodyString}');
        },
      );
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
  final selectedColorIndex = 0.obs;
  final selectedSizeIndex = 0.obs;
  final currentIndexfav = 0.obs;
  final isSelectedIndex = 0.obs;
  final isOverFlow = true.obs;
  final imagesModel = ImagesModel().obs;
  final eachPrice = 0.0.obs;
  final isfav = false.obs;
  var favCartList = <ProductDetailsModel>[].obs;
  //var myCartList = <DetailModel>[].obs;

  Future<void> addToCart({
    required BuildContext context,
    required String productId,
    required String variantId,
    required String sizeId,
    required String price,
    required int qty,
  }) async {
    showLoading(context);
    final body = {
      "product_id": productId,
      "variant_id": variantId,
      "size_id": sizeId,
      "price": price,
      "quantity": qty
    };
    await api
        .onNetworkRequesting(
      url: 'cart',
      methode: METHODE.post,
      body: body,
      isAuthorize: true,
    )
        .then(
      (resBody) {
        debugPrint('Add to Cart : $resBody');
        removeLoading();
        showInfoSnackBar(
          message: 'Product added to cart successsfully',
          action: SnackBarAction(
            label: 'View',
            onPressed: () {
              context.go('/cart');
            },
          ),
        );
      },
    ).onError(
      (ErrorModel error, _) {
        debugPrint('Add to Cart : ${error.bodyString}');
        removeLoading();
        showInfoSnackBar(
          message: 'Product added to cart fail',
        );
      },
    );
  }

  Future<void> updateItemInCart({
    required BuildContext context,
    required String id,
    required int qty,
    // required String productId,
    // required String variantID,
  }) async {
    showLoading(context);
    final body = {
      "quantity": qty,
    };
    await api
        .onNetworkRequesting(
      url: 'cart-by-id/$id',
      methode: METHODE.update,
      body: body,
      isAuthorize: true,
    )
        .then(
      (resBody) async {
        debugPrint('Update Cart Success: $resBody');
        await Get.put(MyCardController()).getMyCard(loading: false);
        removeLoading();
      },
    ).onError(
      (ErrorModel error, _) {
        alertErrorSnackbar(
            title: 'Error', message: error.bodyString['message'] ?? '');
        debugPrint('Update Cart Error: ${error.bodyString}');
        removeLoading();
      },
    );
  }

  Future<void> removeItemFromCart({
    required BuildContext context,
    required String id,
  }) async {
    showLoading(context);
    await api
        .onNetworkRequesting(
      url: 'cart/$id',
      methode: METHODE.delete,
      isAuthorize: true,
    )
        .then(
      (resBody) async {
        debugPrint('Add to Cart : $resBody');
        await Get.put(MyCardController()).getMyCard(loading: false);
        removeLoading();
      },
    ).onError(
      (ErrorModel error, _) {
        debugPrint('Add to Cart : ${error.bodyString}');
        removeLoading();
      },
    );
  }
}
