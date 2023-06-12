import 'package:allpay/src/module/home/models/product_details/product_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/custom_product_cart.dart';

class SearchResultScreen extends StatefulWidget {
  final int id;
  const SearchResultScreen({super.key, required this.id});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  final homeController = Get.put(HomeController());
  ProductDetailsModel detailsModel = ProductDetailsModel();
  @override
  void initState() {
    fetch();
    super.initState();
  }

  Future<void> fetch() async {
    try {
      await homeController.getProductDetails(widget.id).then((value) {
        detailsModel = value;
        debugPrint('===========> detailsModel123 $detailsModel');
      });
    } catch (e) {
      debugPrint('===========> hello detailsModel ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Obx(
        () => homeController.isLoadingDetails.value
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.red,
              ))
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 210,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 230),
                itemCount: detailsModel.variants!.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomProductCart(
                    title: detailsModel.variants![index].name,
                    image: detailsModel.variants![index].imageUrl,
                    price: detailsModel.variants![index].price,
                  );
                }),
      ),
    );
  }
}
