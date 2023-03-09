// ignore_for_file: file_names, avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';


class CatagoryPostProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postCatagoryEndPoint = "api/v1/admin/category";

  Future addCatagory(String cTypeString,String imageUrl,String title, String townCityId) async {
    print(townCityId);
    try {
      final catagoryResponce = await _dio.post(_baseUrl + _postCatagoryEndPoint,
          data: {'title': title.toString(), 'townCity': townCityId,"ImageUrl": imageUrl,"type":cTypeString});
      // print(catagoryResponce.data);
      if (catagoryResponce.statusCode == 201) {
        print(catagoryResponce.data);
        return;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
