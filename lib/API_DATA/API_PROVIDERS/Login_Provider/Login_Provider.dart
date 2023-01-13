// ignore_for_file: unused_field, avoid_print, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, file_names
import 'dart:developer';
import 'package:brain_book_admin/API_DATA/API_MODELS/Login_Model/Login_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LoginProvider {
  final _dio = Dio();
  final String _BaseUrl = "http://13.251.135.112:8080/";
  final String _loginEndpoint = "api/v1/users/login";

  Future<dynamic> loginUser(
      {required String email, required String password}) async {
    try {
      final _responce = await _dio.post(_BaseUrl + _loginEndpoint,
          data: {"email": email, "password": password});

      if (_responce.statusCode == 200) {
        return LoginModel.fromJson(_responce.data);
      }
    } on DioError catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      log("LogIn user error: $e");
      rethrow;
    }
  }
}
