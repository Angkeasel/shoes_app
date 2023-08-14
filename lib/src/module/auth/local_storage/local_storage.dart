import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static SharedPreferences? _prefs;

  // initial SharedPreferences

  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();

    return _prefs!;
  }

  // store data to local storage

  static Future<void> storeData({String? key, dynamic value}) async {
    if (value.runtimeType == String) {
      await _prefs!.setString(key!, value);
    } else if (value.runtimeType == int) {
      await _prefs!.setInt(key!, value);
    } else if (value.runtimeType == bool) {
      await _prefs!.setBool(key!, value);
    } else if (value.runtimeType == double) {
      await _prefs!.setDouble(key!, value);
    } else {
      _prefs!.setStringList(key!, value);
    }
  }

  // function for get data from local storage

  static Future<int> getIntValue({String? key}) async {
    return (_prefs!.getInt(key!) ?? 0);
  }

  static Future<String> getStringValue({
    String? key,
  }) async {
    return (_prefs!.getString(key!) ?? "");
  }

  static Future<bool> getBooleanValue({String? key}) async {
    return (_prefs!.getBool(key!) ?? false);
  }

  static Future<double> getDoubleValue({String? key}) async {
    return (_prefs!.getDouble(key!) ?? 0.0);
  }

  static Future<List<String>> getListStringValue({required String key}) async {
    return _prefs?.getStringList(key) ?? [];
  }

  static Future<void> storeListStringValue({
    required String key,
    required List<String> value,
  }) async {
    await _prefs!.setStringList(key, value);
  }
}








//////Noted ******

// import 'dart:developer';

// import 'package:shared_preferences/shared_preferences.dart';

// class LocalStorage {
//   static SharedPreferences? _preferences;
//   // init
//   Future<SharedPreferences> initLocalStorage() async {
//     _preferences = await SharedPreferences.getInstance();
//     return _preferences!;
//   }

//   //store data
//   Future<void> storeData({required String key, required dynamic value}) async {
//     log("CHeck datatype : ${value.runtimeType}");
//     switch (value.runtimeType) {
//       case String:
//         await _preferences!.setString(key, value);
//         break;
//       case int:
//         await _preferences!.setInt(key, value);
//         break;
//       case double:
//         await _preferences!.setDouble(key, value);
//         break;
//       case bool:
//         await _preferences!.setBool(key, value);
//         break;
//       default:
//         await _preferences!.setStringList(key, value);
//         break;
//     }
//   }

//   // get data
//   String getStringData({required String key}) =>
//       _preferences!.getString(key) ?? "";
//   int getIntData({required String key}) => _preferences!.getInt(key) ?? 0;
//   double getDoubleData({required String key}) =>
//       _preferences!.getDouble(key) ?? 0;
//   bool getBoolData({required String key}) =>
//       _preferences!.getBool(key) ?? false;

//   // clear data
//   void clearData() {
//     _preferences!.clear();
//   }

//   // remove data
//   void removeData({
//     required String key,
//   }) {
//     _preferences!.remove(key);
//   }
// }



