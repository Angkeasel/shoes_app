import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    getAllSearchHistory();
    super.initState();
  }

  List<String> _searchHistories = [];

  void getAllSearchHistory() async {
    _searchHistories =
        await LocalStorage.getListStringValue(key: 'search-history');
    setState(() {});
  }

  void addHistory(String value) async {
    if (value.isNotEmpty && !_searchHistories.contains(value)) {
      _searchHistories.add(value);
      setState(() {});
      await LocalStorage.storeListStringValue(
          key: 'search-history', value: _searchHistories);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text('Search'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {
                //TODO: Call Search

                context.push('/go-search/search-result?textSearch=$value');
                addHistory(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: 'Search your shoes',
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: SizedBox(
                  width: 16,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/svg/search_icon.svg',
                      width: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Shoes',
              style: TextStyle(
                fontFamily: 'Raleway-SemiBold',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (_, index) {
                final text = _searchHistories.reversed.toList()[index];
                return GestureDetector(
                  onTap: () {
                    context.push('/go-search/search-result?textSearch=$text');
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svg/history_icon.svg'),
                        const SizedBox(width: 10),
                        Text(text),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (_, index) => const SizedBox(height: 20),
              itemCount: _searchHistories.length,
            ),
          )
        ],
      ),
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
