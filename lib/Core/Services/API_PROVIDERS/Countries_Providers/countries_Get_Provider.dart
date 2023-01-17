// ignore_for_file: file_names, avoid_print
import 'package:brain_book_admin/Core/Services/API_MODELS/Countries%20Models/countries_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CountriesGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _getCountriesEndPoint = "api/v1/admin/country";
  Future<List<dynamic>> fetchCountries() async {
    try {
      var countriesResponce = await _dio.get(_baseUrl + _getCountriesEndPoint);
      if (countriesResponce.statusCode == 200) {
        // print(countriesResponce.data);
        List<dynamic> data = (countriesResponce.data)
            .map((data) => CountriesGetModel.fromJson(data))
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
