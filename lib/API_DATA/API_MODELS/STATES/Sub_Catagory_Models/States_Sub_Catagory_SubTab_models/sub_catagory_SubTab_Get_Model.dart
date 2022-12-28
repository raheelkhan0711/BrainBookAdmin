// ignore_for_file: file_names

class SubCatagorySubTabGetModel {
  String? subCatagoryId;
  String? title;
  String? categoryId;

  SubCatagorySubTabGetModel({this.subCatagoryId, this.title, this.categoryId});

  SubCatagorySubTabGetModel.fromJson(Map<String, dynamic> json) {
    subCatagoryId = json['_id'];
    title = json['title'];
    categoryId = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = subCatagoryId;
    data['title'] = title;
    data['category'] = categoryId;
    return data;
  }
}
