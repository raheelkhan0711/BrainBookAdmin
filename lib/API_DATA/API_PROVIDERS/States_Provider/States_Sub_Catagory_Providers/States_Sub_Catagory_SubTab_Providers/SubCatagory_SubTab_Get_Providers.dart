// ignore_for_file: prefer_interpolation_to_compose_strings, file_names
import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/Sub_Catagory_Models/States_Sub_Catagory_SubTab_models/sub_catagory_SubTab_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SubCatagorySubTabGetProvider {
  final _dio = Dio();
  final _baseUrl = 'http://3.12.213.89:8080/';
  final _getSubCatagorySubTabEndPoint = 'api/v1/admin/subTab?categoryId=';

  Future<List<dynamic>> fetchSubCatagorySubTab(String categoryId) async {
    //  print(categoryId);
    try {
      var subCatagorySubTabResponce = await _dio
          .get(_baseUrl + "$_getSubCatagorySubTabEndPoint$categoryId");
      if (subCatagorySubTabResponce.statusCode == 200) {
        //  print(subCatagorySubTabResponce.data);
        List<dynamic> data = (subCatagorySubTabResponce.data)
            .map((data) => SubCatagorySubTabGetModel.fromJson(data))
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
