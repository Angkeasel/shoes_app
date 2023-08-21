import 'package:allpay/src/module/my_card/model/address/address_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:get/get.dart';

class AdressController extends GetxController {
  var dressController = AddressModel().obs;
  ApiBaseHelper api = ApiBaseHelper();
  Future<AddressModel> getAPI() async {
    try {
      await api
          .onNetworkRequesting(
              url: 'address', methode: METHODE.get, isAuthorize: true)
          .then((value) {
            
          });
    } catch (e) {}
    return dressController();
  }
}
