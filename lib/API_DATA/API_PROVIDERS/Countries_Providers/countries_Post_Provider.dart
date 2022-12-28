// ignore_for_file: avoid_print, file_names

import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class CountriesPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _postCountryEndpoint = "api/v1/admin/country";

  Future addNewCountry(String countryName) async {
    try {
      final countriesResponce = await _dio.post(_baseUrl + _postCountryEndpoint,
          data: {'countryName': countryName});
      // print(countriesResponce.data);
      if (countriesResponce.statusCode == 200) {
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
