// ignore_for_file: file_names
class SubCatagoryTextGetModel {
  String? subCatagoryId;
  String? title;
  String? description;
  String? categoryId;

  SubCatagoryTextGetModel(
      {this.subCatagoryId, this.title, this.description, this.categoryId});

  SubCatagoryTextGetModel.fromJson(Map<String, dynamic> json) {
    subCatagoryId = json['_id'];
    title = json['title'];
    description = json['description'];
    categoryId = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = subCatagoryId;
    data['title'] = title;
    data['description'] = description;
    data['category'] = categoryId;
    return data;
  }
}
