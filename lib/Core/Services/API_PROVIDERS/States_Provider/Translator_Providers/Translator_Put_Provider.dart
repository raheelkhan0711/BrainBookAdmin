// ignore_for_file: file_names, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:developer';

import 'package:dio/dio.dart';

class TranslatorPutProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _editTranslatorEndPoint = "api/v1/admin/language";
  Future editLanguage(
    String name,
    String translatorId,
  ) async {
    try {
      //  print(translatorId);
      final editLanguageResponce = await _dio
          .put(_baseUrl + "$_editTranslatorEndPoint/$translatorId", data: {
        "name": name,
      });
      if (editLanguageResponce.statusCode == 201) {
        print(editLanguageResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Catagory State not Updated: $e");
      rethrow;
    }
  }
}
