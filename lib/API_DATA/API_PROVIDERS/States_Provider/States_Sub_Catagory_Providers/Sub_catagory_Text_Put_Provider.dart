// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, file_names
import 'dart:developer';
import 'package:dio/dio.dart';

class SubCatagoryPutProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _editSubCatagoryEndPoint = "api/v1/admin/text";
  Future editSubCatagoryText(
    String title,
    String description,
    String subCatagoryId,
  ) async {
    try {
      final editSubCatagoryTextResponce = await _dio.put(
          _baseUrl + "$_editSubCatagoryEndPoint/$subCatagoryId",
          data: {"title": title, "description": description});
      if (editSubCatagoryTextResponce.statusCode == 200) {
        print(editSubCatagoryTextResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Sub CatagoryState Text not Updated: $e");
      rethrow;
    }
  }
}
