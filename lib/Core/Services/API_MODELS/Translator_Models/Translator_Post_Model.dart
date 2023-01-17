// ignore_for_file: file_names

class TranslatorPostModel {
  String? name;
  String? imageUrl;
  String? translatorId;

  TranslatorPostModel({this.name, this.imageUrl, this.translatorId});

  TranslatorPostModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageUrl = json['ImageUrl'];
    translatorId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['ImageUrl'] = imageUrl;
    data['_id'] = translatorId;
    return data;
  }
}
