// ignore_for_file: file_names, prefer_interpolation_to_compose_strings, avoid_print

import 'package:brain_book_admin/Core/Services/API_MODELS/Translator_Models/Phrase%20Models/phrase_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PhraseGetProvider {
  final _dio = Dio();
  final _baseurl = "http://13.251.135.112:8080/";
  final _getPhraseEndPoint = "api/v1/admin/phrase?languageId=";

  Future<List<dynamic>> fetchPhrase(String languageId) async {
    print(languageId);
    try {
      var phraseResponce =
          await _dio.get(_baseurl + "$_getPhraseEndPoint$languageId");
      if (phraseResponce.statusCode == 200) {
        // print(phraseResponce.data);
        List<dynamic> data = (phraseResponce.data)
            .map((data) => PhraseGetModel.fromJson(data))
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
