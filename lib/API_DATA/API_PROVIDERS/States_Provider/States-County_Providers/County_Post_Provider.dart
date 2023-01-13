// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class CountyPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postCountyEndpoint = "api/v1/admin/counties";

  Future addNewCounty(String countyName, String stateId) async {
    print(stateId);
    try {
      final countyResponce = await _dio.post(_baseUrl + _postCountyEndpoint,
          data: {'countyName': countyName, "state": stateId});
      print(countyResponce.data);
      if (countyResponce.statusCode == 200) {
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
