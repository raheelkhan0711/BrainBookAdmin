// ignore_for_file: file_names

class SubCatagorySubTabPostModel {
  String? title;
  String? categoryId;
  String? subCatagoryId;

  SubCatagorySubTabPostModel({this.title, this.categoryId, this.subCatagoryId});

  SubCatagorySubTabPostModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    categoryId = json['category'];
    subCatagoryId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['category'] = categoryId;
    data['_id'] = subCatagoryId;
    return data;
  }
}
