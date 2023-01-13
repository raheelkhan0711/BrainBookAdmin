// ignore_for_file: file_names, avoid_print, prefer_interpolation_to_compose_strings

import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/Sub_Catagory_Models/Sub_catagory_Text_Get_model.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class SubCatagoryTextGetProvider {
  final _dio = Dio();
  final _baseUrl = 'http://13.251.135.112:8080/';
  final _getSubCatagoryEndPoint = 'api/v1/admin/text?categoryId=';

  Future<List<dynamic>> fetchSubCatagoryText(String categoryId) async {
    print(categoryId);
    try {
      var subCatagoryResponce =
          await _dio.get(_baseUrl + "$_getSubCatagoryEndPoint$categoryId");
      if (subCatagoryResponce.statusCode == 200) {
        print(subCatagoryResponce.data);
        List<dynamic> data = (subCatagoryResponce.data)
            .map((data) => SubCatagoryTextGetModel.fromJson(data))
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
