import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;


//file send
class ImageUploader{
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postCatagoryEndPoint = "api/v1/admin/upload";
  imageUploader(File file) async {
    var uri = Uri.parse(_baseUrl+_postCatagoryEndPoint);
    print("test 1");
    var request =  http.MultipartRequest('POST', uri);
    // request.headers["Authorization"] = "Bearer ${controller.userTokenFromLocal}";
    print("test 2");
    print(file);
    request.files.add(http.MultipartFile.fromBytes("file",  File(file.path).readAsBytesSync()));
    print("test 3");
    var response = await request.send();
    print("test 4");
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    print("test 5");
    print("Response: $responseString");

    var data = jsonDecode(responseString);
    // print(data);

    if(response.statusCode == 200) {
      return data["urls"];
      print("${data["urls"]}");
    }
  }
}

//zeshan file send
class Uploader {
  final _baseUrl = "http://13.251.135.112:8080/";
  final _postCatagoryEndPoint = "api/v1/admin/upload";
  asyncFileUpload(Uint8List file) async {
    var request = http.MultipartRequest("POST", Uri.parse(_baseUrl+_postCatagoryEndPoint));
    //add text fields
    //create multipart using filepath, string or bytes
    List<int> list = file.cast();
    request.files.add(
      http.MultipartFile.fromBytes("file", list, filename: "image.png"),
    );
    print("1");
    var response = await request.send();
    //Get the response from the server
    // print( jsonDecode(response.reasonPhrase!));
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    print(response.statusCode);
    if(response.statusCode == 200){
      var json = jsonDecode(responseString);
      print(json);
      String url = json['urls'];
      return url;
    }
    else{
      print('network error');
      // Show.showErrorSnackBar("Error", "Something Getting wrong!");
    }
  }


  Future<dynamic> uploadFile(File file) async {
    // File filee = File.fromRawPath(file);
    print("1");
    // var headers = {'Authorization': 'Bearer TOKEN'}; // remove headers if not wanted
    var request = http.MultipartRequest(
        'POST', Uri.parse(_baseUrl+_postCatagoryEndPoint)); // your server url
    request.fields.addAll({'file': 'file'}); // any other fields required by your server
    print("2");
    request.files
        .add(await http.MultipartFile.fromPath('file', file.path));

    print("3");// file you want to upload
    // request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    print(response.statusCode);
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(await response.stream.bytesToString());
      }
      return response.stream.bytesToString();
    } else {
      if (kDebugMode) {
        print(response.reasonPhrase);
      }
      return ;
    }
  }
}


