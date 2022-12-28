// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class CatagoryPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _postCatagoryEndPoint = "api/v1/admin/category";
  Future addCatagory(String title, String townCityId) async {
    print(townCityId);
    try {
      final catagoryResponce = await _dio.post(_baseUrl + _postCatagoryEndPoint,
          data: {'title': title.toString(), 'townCity': townCityId});
      // print(catagoryResponce.data);
      if (catagoryResponce.statusCode == 201) {
        print(catagoryResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
