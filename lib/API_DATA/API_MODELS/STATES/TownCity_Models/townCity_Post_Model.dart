// ignore_for_file: file_names

class TownCityPostModel {
  String? countyId;
  String? townCityName;
  String? imageUrl;
  String? townCityId;

  TownCityPostModel(
      {this.countyId, this.townCityName, this.imageUrl, this.townCityId});

  TownCityPostModel.fromJson(Map<String, dynamic> json) {
    countyId = json['county'];
    townCityName = json['townCityName'];
    imageUrl = json['ImageUrl'];
    townCityId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['county'] = countyId;
    data['townCityName'] = townCityName;
    data['ImageUrl'] = imageUrl;
    data['_id'] = townCityId;
    return data;
  }
}
