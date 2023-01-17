// ignore_for_file: file_names

class StateCatagoryGetModel {
  String? catagoryId;
  String? townCityId;
  String? title;
  String? imageUrl;

  StateCatagoryGetModel(
      {this.catagoryId, this.townCityId, this.title, this.imageUrl});

  StateCatagoryGetModel.fromJson(Map<String, dynamic> json) {
    catagoryId = json['_id'];
    townCityId = json['townCity'];
    title = json['title'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = catagoryId;
    data['townCity'] = townCityId;
    data['title'] = title;
    data['ImageUrl'] = imageUrl;
    return data;
  }
}
