// ignore_for_file: file_names

class SubCatagoryTextPostModel {
  String? title;
  String? description;
  String? categoryId;
  String? subCatagoryId;

  SubCatagoryTextPostModel(
      {this.title, this.description, this.categoryId, this.subCatagoryId});

  SubCatagoryTextPostModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    categoryId = json['category'];
    subCatagoryId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['category'] = categoryId;
    data['_id'] = subCatagoryId;
    return data;
  }
}
