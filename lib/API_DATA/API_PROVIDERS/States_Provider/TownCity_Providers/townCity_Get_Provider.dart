// ignore_for_file: prefer_interpolation_to_compose_strings, file_names, avoid_print

import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/TownCity_Models/TownCity_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TownCityGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _getTownCityEndpoint = "api/v1/admin/townCity?countyId=";
  Future<List<dynamic>> fetchTownCity(String countyId) async {
    print(countyId);
    try {
      var townCityResponce =
          await _dio.get(_baseUrl + "$_getTownCityEndpoint$countyId");
      if (townCityResponce.statusCode == 200) {
        print(townCityResponce.data);
        List<dynamic> data = (townCityResponce.data)
            .map((data) => TownCityGetModel.fromJson(data))
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
