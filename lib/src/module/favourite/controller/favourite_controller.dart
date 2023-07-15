import 'package:allpay/src/module/favourite/controller/favourite_base.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController implements FavouriteBase {
  final _apiBaseHelper = ApiBaseHelper();
  @override
  Future<void> onFavourite(String id) async {
    final responseBody = await _apiBaseHelper.onNetworkRequesting(
      url: 'favorite',
      methode: METHODE.post,
      isAuthorize: true,
    );
  }
}
