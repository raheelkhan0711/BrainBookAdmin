// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers, avoid_print, file_names

import 'package:brain_book_admin/API_DATA/API_MODELS/Dashboard_Home_Models/dashboard_Home_users_model.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class DashboardHomeUsersProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _dashboardUsersEndpoint = "api/v1/admin/all-users";

  Future<dynamic> totalUsers() async {
    try {
      final _userResponce = await _dio.get(_baseUrl + _dashboardUsersEndpoint);
      // print(_userResponce.data);
      if (_userResponce.statusCode == 200) {
        return Dashboard_Home_Users_Model.fromJson(_userResponce.data);
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
