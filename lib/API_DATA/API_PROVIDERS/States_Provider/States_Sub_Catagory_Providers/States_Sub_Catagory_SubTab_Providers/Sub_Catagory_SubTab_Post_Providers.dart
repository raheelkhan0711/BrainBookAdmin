// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SubCatagorySubTabPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _postSubCatagorySubTabEndPoint = "api/v1/admin/subTab";
  Future addSubCatagorySubTab(
    String categoryId,
    String title,
  ) async {
    // print(categoryId);
    try {
      final stateSubCatagorySubTabResponce = await _dio.post(
          _baseUrl + _postSubCatagorySubTabEndPoint,
          data: {"title": title, "category": categoryId});
      if (stateSubCatagorySubTabResponce.statusCode == 200) {
        print(stateSubCatagorySubTabResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
