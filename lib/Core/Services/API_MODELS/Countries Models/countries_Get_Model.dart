// ignore_for_file: file_names
class CountriesGetModel {
  String? cId;
  String? countryName;
  String? imageUrl;

  CountriesGetModel({this.cId, this.countryName, this.imageUrl});

  CountriesGetModel.fromJson(Map<String, dynamic> json) {
    cId = json['_id'];
    countryName = json['countryName'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = cId;
    data['countryName'] = countryName;
    data['ImageUrl'] = imageUrl;
    return data;
  }
}
