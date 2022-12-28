// ignore_for_file: file_names

class TranslatorGetModel {
  String? translatorId;
  String? name;
  String? imageUrl;

  TranslatorGetModel({this.translatorId, this.name, this.imageUrl});

  TranslatorGetModel.fromJson(Map<String, dynamic> json) {
    translatorId = json['_id'];
    name = json['name'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = translatorId;
    data['name'] = name;
    data['ImageUrl'] = imageUrl;
    return data;
  }
}
