// ignore_for_file: avoid_print, prefer_interpolation_to_compose_strings, file_names

import 'dart:developer';
import 'package:dio/dio.dart';

class SubCatagorySubTabPutProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _editSubCatagorySubTabEndPoint = "api/v1/admin/subTab";
  Future editSubCatagorySubTab(
    String title,
    String subCatagoryId,
  ) async {
    // print(title);
    try {
      final editSubCatagorySubTabResponce = await _dio.put(
          _baseUrl + "$_editSubCatagorySubTabEndPoint/$subCatagoryId",
          data: {
            "title": title,
          });
      if (editSubCatagorySubTabResponce.statusCode == 200) {
        print(editSubCatagorySubTabResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Sub CatagoryState SubTab not Updated: $e");
      rethrow;
    }
  }
}
