// ignore_for_file: prefer_interpolation_to_compose_strings, file_names, avoid_print
import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/County_Models/County_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CountyGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _getCountyEndpoint = "api/v1/admin/counties?stateId=";
  Future<List<dynamic>> fetchCounty(String stateId) async {
    print(stateId);
    try {
      var countyResponce =
          await _dio.get(_baseUrl + "$_getCountyEndpoint$stateId");
      if (countyResponce.statusCode == 200) {
        print(countyResponce.data);
        List<dynamic> data = (countyResponce.data)
            .map((data) => CountyGetModel.fromJson(data))
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
