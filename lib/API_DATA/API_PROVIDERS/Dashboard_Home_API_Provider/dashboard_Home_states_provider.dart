// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, avoid_print, file_names

import 'package:brain_book_admin/API_DATA/API_MODELS/Dashboard_Home_Models/dashboard_Home_states_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class DashboardHomeStatesProvider {
  final _dio = Dio();
  final String _BaseUrl = "http://3.12.213.89:8080/";
  final String _dashboardStatesEndpoint = "api/v1/admin/total-states";

  Future<dynamic> totalStates() async {
    try {
      final _statesResponce =
          await _dio.get(_BaseUrl + _dashboardStatesEndpoint);
      // print(_statesResponce.data);
      if (_statesResponce.statusCode == 200) {
        return Dashboard_Home_States_Model.fromJson(_statesResponce.data);
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
  }
}
