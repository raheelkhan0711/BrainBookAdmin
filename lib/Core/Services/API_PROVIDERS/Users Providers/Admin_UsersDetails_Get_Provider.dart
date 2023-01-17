// ignore_for_file: file_names, avoid_print, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps
import 'package:brain_book_admin/Core/Services/API_MODELS/Users%20Models/Admin_UsersDetails_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AdminUsersDetailsGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _adminUsersDetailsEndPoint = "api/v1/admin/adminUser";
  Future<List<dynamic>> fetchAdminUsersDetails(
    String adminUserId,
  ) async {
    try {
      print(adminUserId);
      print('kjhskshbkj');
      final adminUsersDetailsResponce = await _dio.get(
        _baseUrl + "$_adminUsersDetailsEndPoint/$adminUserId",
      );
      if (adminUsersDetailsResponce.statusCode == 200) {
        print(adminUsersDetailsResponce.data);
        List<dynamic> data = (adminUsersDetailsResponce.data)
            .map((data) => AdminUserDetailsGetModel.fromJson(data))
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
