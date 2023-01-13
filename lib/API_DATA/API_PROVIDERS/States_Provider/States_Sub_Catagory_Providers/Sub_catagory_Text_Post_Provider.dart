// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class SubCatagoryTextPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postSubCatagoryStateEndPoint = "api/v1/admin/text";
  Future addSubCatagoryText(
      String categoryId, String title, String description) async {
    // print(categoryId);
    try {
      final stateSubCatagoryResponce = await _dio
          .post(_baseUrl + _postSubCatagoryStateEndPoint, data: {
        "title": title,
        "description": description,
        "category": categoryId
      });
      if (stateSubCatagoryResponce.statusCode == 200) {
        print(stateSubCatagoryResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
