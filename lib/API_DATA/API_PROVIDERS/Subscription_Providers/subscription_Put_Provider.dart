// ignore_for_file: prefer_interpolation_to_compose_strings, file_names

import 'dart:developer';

import 'package:dio/dio.dart';

class SubscriptionPutProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _editSubscriptionEndPoint = "api/v1/admin/package";
  Future editSubscriptionPackage(
    String title,
    String description,
    String price,
    String id,
  ) async {
    try {
      final editSubscriptionReponce = await _dio
          .put(_baseUrl + "$_editSubscriptionEndPoint/$id", data: {
        "packageTitle": title,
        "description": description,
        "price": price
      });
      if (editSubscriptionReponce.statusCode == 200) {
        //  print(editSubscriptionReponce.data);
        return;
      }
    } on DioError catch (e) {
      log("Subscription Package not Updated: $e");
      rethrow;
    }
  }
}
