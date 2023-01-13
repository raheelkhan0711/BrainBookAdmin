// ignore_for_file: file_names, avoid_print
import 'package:brain_book_admin/API_DATA/API_MODELS/Users%20Models/Admin_User_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AdminUserGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _adminUserGetEndPoint = "api/v1/admin/adminUser";
  Future<List<dynamic>> fetchAdminUserData() async {
    try {
      var adminUserResponce = await _dio.get(_baseUrl + _adminUserGetEndPoint);
      if (adminUserResponce.statusCode == 200) {
        // print(adminUserResponce.data);
        List<dynamic> data = (adminUserResponce.data)
            .map((data) => AdminUserGetModel.fromJson(data))
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
