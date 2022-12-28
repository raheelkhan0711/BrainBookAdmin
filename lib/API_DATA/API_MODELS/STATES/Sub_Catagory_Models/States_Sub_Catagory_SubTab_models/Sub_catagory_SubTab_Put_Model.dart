// ignore_for_file: file_names

class SubCatagorySubTabPutModel {
  String? subCatagoryId;
  String? title;
  String? categoryId;

  SubCatagorySubTabPutModel({this.subCatagoryId, this.title, this.categoryId});

  SubCatagorySubTabPutModel.fromJson(Map<String, dynamic> json) {
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
