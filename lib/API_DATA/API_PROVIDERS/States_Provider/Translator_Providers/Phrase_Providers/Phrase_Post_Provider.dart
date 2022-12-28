// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PhrasePostProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _postPhraseEndpoint = "api/v1/admin/phrase";

  Future addNewPhrase(
      String english, String targetLanguage, String languageId) async {
    print(languageId);
    try {
      final phraseResponce = await _dio.post(_baseUrl + _postPhraseEndpoint,
          data: {
            'english': english,
            "targetLanguage": targetLanguage,
            "language": languageId
          });
      print(phraseResponce.data);
      if (phraseResponce.statusCode == 200) {
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
