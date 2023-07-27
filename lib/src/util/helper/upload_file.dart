import 'dart:io';

import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FileUpload {
  late Dio dio;
  FileUpload() {
    dio = Dio();
  }

  Future<Response> uploadImage({
    required File file,
    required String keyName,
    required String url,
  }) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      keyName: await MultipartFile.fromFile(file.path, filename: fileName),
    });
    final token = await LocalStorage.getStringValue(key: 'access_token');
    var response = await dio.post(
      url,
      data: formData,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
      ),
    );

    debugPrint('submit url: $url');
    debugPrint('submit keyName: $keyName');
    debugPrint('submit file: $file');
    return response;
  }
}
