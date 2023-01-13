// ignore_for_file: avoid_print, file_names

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TownCityPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postTownCityEndpoint = "api/v1/admin/townCity";

  Future addNewTownCity(String townCityName, String countyId) async {
    print(countyId);
    try {
      final townCityResponce = await _dio.post(_baseUrl + _postTownCityEndpoint,
          data: {'townCityName': townCityName, "county": countyId});
      print(townCityResponce.data);
      if (townCityResponce.statusCode == 201) {
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
