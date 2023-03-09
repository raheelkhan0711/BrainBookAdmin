



import 'dart:convert';

import 'package:brain_book_admin/Model/Trespassers/trespassersModel.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class Trespassers {
  final String baseUrl = "http://13.251.135.112:8080/api/v1/";
  final String trespasserAddEndPoint = "other/trespasser?townCityId=";
  final String trespasserEditAddEndPoint = "other/trespasser/";
  Future<List<TrespassersModel>> getTrespassersDetails(townCityId)async{
    final response = await get(Uri.parse("$baseUrl$trespasserAddEndPoint$townCityId"));
    // print('this is response');
    if(response.statusCode==200){
      List<TrespassersModel> data = (jsonDecode(response.body) as List).map((e) => TrespassersModel.fromJson(e)).toList();
      print(data.length);
      return data;
    }else{
      return [];
    }
  }

  Future<TrespassersModel> updateTrespasser(TrespassersModel chengedModel) async {
    print('chengedModel.trespasserName');
    print(chengedModel.trespasserName);
    var response = await http.put(
        Uri.parse('$baseUrl$trespasserEditAddEndPoint${chengedModel.sId}'),
        body:  chengedModel.toJson()
    );
    print('response');
    print(response);

    // print('data');
    // print(data['data']['user']);
    if(response.statusCode==200){
      var respsnseData = jsonDecode(response.body.toString());
      TrespassersModel data = TrespassersModel.fromJson(respsnseData);
      print('data.trespasserName');
      print(data.trespasserName);
      return data;
    }else{
      return TrespassersModel();
    }
  }

  Future<TrespassersModel> deleteTrespasser(TrespassersModel chengedModel) async {
    print('chengedModel.trespasserName');
    print(chengedModel.trespasserName);
    var response = await http.delete(
        Uri.parse('$baseUrl$trespasserEditAddEndPoint${chengedModel.sId}')
        // body:  chengedModel.toJson()
    );
    print('response');
    print(response);

    // print('data');
    // print(data['data']['user']);
    if(response.statusCode==200){
      var respsnseData = jsonDecode(response.body.toString());
      TrespassersModel data = TrespassersModel.fromJson(respsnseData);
      print('data.trespasserName');
      print(data.trespasserName);
      return data;
    }else{
      return TrespassersModel();
    }
  }
}