// ignore_for_file: file_names

class TownCityGetModel {
  String? townCityId;
  String? countyId;
  String? townCityName;
  String? imageUrl;

  TownCityGetModel(
      {this.townCityId, this.countyId, this.townCityName, this.imageUrl});

  TownCityGetModel.fromJson(Map<String, dynamic> json) {
    townCityId = json['_id'];
    countyId = json['county'];
    townCityName = json['townCityName'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = townCityId;
    data['county'] = countyId;
    data['townCityName'] = townCityName;
    data['ImageUrl'] = imageUrl;
    return data;
  }
}
