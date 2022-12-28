// ignore_for_file: file_names, avoid_print, prefer_interpolation_to_compose_strings

import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/Catagory_Models/Catagory_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class CatagoryGetProvider {
  final _dio = Dio();
  final _baseurl = "http://3.12.213.89:8080/";
  final _getCatagoryEndPoint = "api/v1/admin/category?townCityId=";

  Future<List<dynamic>> fetchCatagory(String townCityId) async {
    print(townCityId);
    try {
      var statesCatagoryResponce =
          await _dio.get(_baseurl + "$_getCatagoryEndPoint$townCityId");
      if (statesCatagoryResponce.statusCode == 200) {
        // print(statesCatagoryResponce.data);
        List<dynamic> data = (statesCatagoryResponce.data)
            .map((data) => StateCatagoryGetModel.fromJson(data))
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
