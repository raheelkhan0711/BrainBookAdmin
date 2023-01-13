// ignore_for_file: file_names, unused_field, unused_import, avoid_print
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class StatesPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postStateEndpoint = "api/v1/admin/createState";

  Future addNewState(String state, String countryId) async {
    print(countryId);
    try {
      final statesResponce = await _dio.post(_baseUrl + _postStateEndpoint,
          data: {'state': state, "country": countryId});
      print(statesResponce.data);
      if (statesResponce.statusCode == 200) {
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
