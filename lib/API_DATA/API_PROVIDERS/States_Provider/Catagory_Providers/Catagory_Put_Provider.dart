// ignore_for_file: file_names, avoid_print, prefer_interpolation_to_compose_strings
import 'dart:developer';
import 'package:dio/dio.dart';

class CatagoryPutProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _editCatagoryEndPoint = "api/v1/admin/category";
  Future editCatagory(
    String title,
    String catagoryId,
  ) async {
    try {
      final editCatagoryResponce = await _dio
          .put(_baseUrl + "$_editCatagoryEndPoint/$catagoryId", data: {
        "title": title,
      });
      if (editCatagoryResponce.statusCode == 200) {
        print(editCatagoryResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Catagory State not Updated: $e");
      rethrow;
    }
  }
}
