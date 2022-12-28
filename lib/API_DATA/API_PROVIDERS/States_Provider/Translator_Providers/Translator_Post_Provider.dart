// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TranslatorPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _postTranslatorEndPoint = "api/v1/admin/language";
  Future addLanguage(String name) async {
    try {
      final translatorResponce = await _dio
          .post(_baseUrl + _postTranslatorEndPoint, data: {'name': name});
      if (translatorResponce.statusCode == 201) {
        // print(translatorResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
