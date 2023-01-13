// ignore_for_file: file_names, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:developer';
import 'package:dio/dio.dart';

class PhrasePutProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _editPhraseEndPoint = "api/v1/admin/phrase";
  Future editPhrase(
    String english,
    String targetLanguage,
    String phraseId,
  ) async {
    try {
      print(phraseId);
      final editPhraseResponce = await _dio.put(
          _baseUrl + "$_editPhraseEndPoint/$phraseId",
          data: {"english": english, "targetLanguage": targetLanguage});
      if (editPhraseResponce.statusCode == 201) {
        print(editPhraseResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("phrase not Updated: $e");
      rethrow;
    }
  }
}
