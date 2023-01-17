// ignore_for_file: file_names, avoid_print

import 'package:brain_book_admin/Core/Services/API_MODELS/Subscription%20Models/subscription_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class SubscriptionGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _subscriptionEndPoint = "api/v1/admin/package";
  Future<List<dynamic>> fetchSubscriptionData() async {
    try {
      var subcriptionResponce =
          await _dio.get(_baseUrl + _subscriptionEndPoint);
      if (subcriptionResponce.statusCode == 201) {
        //  print(subcriptionResponce.data.toString());
        List<dynamic> data = (subcriptionResponce.data)
            .map((data) => SubscriptionGetModel.fromJson(data))
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
