// ignore_for_file: file_names

class CountriesPostModel {
  String? countryName;
  String? imageUrl;
  String? cId;

  CountriesPostModel({this.countryName, this.imageUrl, this.cId});

  CountriesPostModel.fromJson(Map<String, dynamic> json) {
    countryName = json['countryName'];
    imageUrl = json['ImageUrl'];
    cId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['countryName'] = countryName;
    data['ImageUrl'] = imageUrl;
    data['_id'] = cId;
    return data;
  }
}
