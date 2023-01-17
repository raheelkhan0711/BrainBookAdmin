// ignore_for_file: file_names, avoid_print

import 'package:brain_book_admin/Core/Services/API_MODELS/Translator_Models/Translator_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class TranslatorGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _translatorGetEndPoint = "api/v1/admin/language";
  Future<List<dynamic>> fetchLanguage() async {
    try {
      var langaugeResponce = await _dio.get(_baseUrl + _translatorGetEndPoint);
      if (langaugeResponce.statusCode == 200) {
        // print(langaugeResponce.data);
        List<dynamic> data = (langaugeResponce.data)
            .map((data) => TranslatorGetModel.fromJson(data))
            .toList();
        return data;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
    return [];
  }
}
