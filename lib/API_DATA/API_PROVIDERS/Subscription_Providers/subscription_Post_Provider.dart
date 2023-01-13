// ignore_for_file: file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class SubscriptionPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postSubscriptionEndpoint = "api/v1/admin/package";

  Future addSubscriptionData(
      String title, String description, String price) async {
    try {
      var subscriptionResponce = await _dio
          .post(_baseUrl + _postSubscriptionEndpoint, data: {
        "packageTitle": title,
        "description": description,
        "price": price
      });
      if (subscriptionResponce.statusCode == 201) {
        //  print(subscriptionResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
    return [];
  }
}
