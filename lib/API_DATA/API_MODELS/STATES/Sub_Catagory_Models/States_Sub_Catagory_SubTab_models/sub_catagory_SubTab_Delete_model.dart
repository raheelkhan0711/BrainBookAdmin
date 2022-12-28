// ignore_for_file: file_names

class SubCatagorySubTabDeleteModel {
  String? subCatagoryId;

  SubCatagorySubTabDeleteModel({this.subCatagoryId});

  SubCatagorySubTabDeleteModel.fromJson(Map<String, dynamic> json) {
    subCatagoryId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = subCatagoryId;
    return data;
  }
}
