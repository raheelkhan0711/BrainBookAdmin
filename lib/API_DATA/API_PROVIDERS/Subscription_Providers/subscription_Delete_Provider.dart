// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, file_names

import 'dart:developer';

import 'package:dio/dio.dart';

class SubscriptionDeleteProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _deleteSubscriptionEndPoint = "api/v1/admin/package";

  Future deleteSubscriptionPackage(String id) async {
    // print(id);
    try {
      final deleteSubscriptionResponce =
          await _dio.delete(_baseUrl + "$_deleteSubscriptionEndPoint/$id");
      if (deleteSubscriptionResponce.statusCode == 200) {
        // print(deleteSubscriptionResponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Subscription Package is not Deleted: $e");
      rethrow;
    }
  }
}
