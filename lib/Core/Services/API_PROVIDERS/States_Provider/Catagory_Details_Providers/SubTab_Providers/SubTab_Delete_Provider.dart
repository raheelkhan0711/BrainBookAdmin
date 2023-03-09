// ignore_for_file: file_names, prefer_interpolation_to_compose_strings, avoid_print
import 'dart:developer';

import 'package:dio/dio.dart';

class SubCatagorySubTabDeleteProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _deleteSubCatagorySubTabEndPoint = "api/v1/admin/subTab";

  Future deleteSubCatagorySubTab(String subCatagoryId) async {
    // print(id);
    try {
      final deleteSubCatagorySubTabResponce = await _dio.delete(
          _baseUrl + "$_deleteSubCatagorySubTabEndPoint/$subCatagoryId");
      if (deleteSubCatagorySubTabResponce.statusCode == 200) {
        print(deleteSubCatagorySubTabResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Sub CatagoryState SubTab not Deleted: $e");
      rethrow;
    }
  }
}
