import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:allpay/src/module/home/pages/search_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../widget/custom_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    // homeController.getProduct();
    super.initState();
  }

  var title = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: IconButton(
                      onPressed: () {
                        homeController.searchList.value = [];
                        homeController.searchController.text = '';
                        searchReturn('');
                        context.pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    )),
                Expanded(
                  child: CustomTextFiled(
                    controller: homeController.searchController,
                    hintText: 'Search by product name',
                    labelText: 'Search',
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    suffixIcon: const Icon(Icons.search),
                    height: 60,
                    onChanges: (e) {
                      searchReturn(e);

                      debugPrint('==========> search name$e');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        if (homeController.searchController.text.isNotEmpty)
          Expanded(
            child: Container(
              color: Colors.green,
              child: ListView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: homeController.searchList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      title = homeController.searchList[index].name!;
                      debugPrint("search find = $title");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SearchResultScreen();
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Text(
                        homeController.searchList[index].name!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
      ],
    );
  }

  void searchReturn(String quary) {
    homeController.searchList.value =
        homeController.productList.where((element) {
      final namePro = element.name!.toLowerCase();

      return namePro.toLowerCase().contains(quary.toLowerCase());
    }).toList();
    setState(() {});
  }
}
