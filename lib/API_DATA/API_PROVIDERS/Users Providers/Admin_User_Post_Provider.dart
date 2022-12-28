// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class AdminUserPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _postAdminUserEndPoint = "api/v1/admin/user";
  Future addAdminUser(String name, String email, String phone) async {
    try {
      final adminUserResponce = await _dio.post(
          _baseUrl + _postAdminUserEndPoint,
          data: {'name': name, "email": email, "phone": phone});
      if (adminUserResponce.statusCode == 200) {
        print(adminUserResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
