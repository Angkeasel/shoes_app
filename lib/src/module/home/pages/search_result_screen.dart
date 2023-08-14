import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/sizes.dart';
import '../../../widget/no_product_text.dart';
import '../controllers/home_controller.dart';
import '../widgets/custom_product_cart.dart';

class SearchResultScreen extends StatefulWidget {
  final String? textSearch;
  const SearchResultScreen({
    super.key,
    required this.textSearch,
  });

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetch();
    });
    super.initState();
    //
  }

  Future<void> fetch() async {
    print(widget.textSearch);
    try {
      await homeController.searchProductByName(textSearch: widget.textSearch);
    } catch (e) {
      debugPrint('===========> hello detailsModel ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Search result of '${widget.textSearch}'"),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
      ),
      body: Obx(
        () => homeController.loadingSearchResult.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : homeController.listSearchProduct.isNotEmpty
                ? RefreshIndicator(
                    onRefresh: () async {
                      //TODO: Refresh
                    },
                    child: GridView.builder(
                        padding: EdgeInsets.all(Sizes.defaultPadding),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 157 / 201,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemCount: homeController.listSearchProduct.length,
                        itemBuilder: (_, index) {
                          return CustomProductCart(
                            title: homeController.listSearchProduct[index].name,
                            image: homeController
                                .listSearchProduct[index].thumbnailUrl,
                            price:
                                homeController.listSearchProduct[index].price,
                            onTap: () {
                              context.push(
                                  '/detail/${homeController.listSearchProduct[index].id}');
                            },
                          );
                        }),
                  )
                : const NoProduct(),
      ),
    );
  }
}
