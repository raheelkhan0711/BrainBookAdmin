// ignore_for_file: file_names

class CatagoryPostModel {
  String? townCityId;
  String? title;
  String? imageUrl;
  String? catagoryId;

  CatagoryPostModel(
      {this.townCityId, this.title, this.imageUrl, this.catagoryId});

  CatagoryPostModel.fromJson(Map<String, dynamic> json) {
    townCityId = json['townCity'];
    title = json['title'];
    imageUrl = json['ImageUrl'];
    catagoryId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['townCity'] = townCityId;
    data['title'] = title;
    data['ImageUrl'] = imageUrl;
    data['_id'] = catagoryId;
    return data;
  }
}
