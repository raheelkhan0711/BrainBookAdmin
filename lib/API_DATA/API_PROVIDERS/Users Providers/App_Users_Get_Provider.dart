// ignore_for_file: avoid_print, file_names

import 'package:brain_book_admin/API_DATA/API_MODELS/Users%20Models/App_Users_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppUsersGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _appUserGetEndPoint = "api/v1/admin/user";
  Future<List<dynamic>> fetchAppUserData() async {
    try {
      var appUserResponce = await _dio.get(_baseUrl + _appUserGetEndPoint);
      if (appUserResponce.statusCode == 200) {
        print(appUserResponce.data);
        List<dynamic> data = (appUserResponce.data)
            .map((data) => AppUsersGetModel.fromJson(data))
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
