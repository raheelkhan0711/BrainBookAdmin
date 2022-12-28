// ignore_for_file: file_names
class CountyGetModel {
  String? countyId;
  String? stateId;
  String? countyName;
  String? imageUrl;

  CountyGetModel({this.countyId, this.stateId, this.countyName, this.imageUrl});

  CountyGetModel.fromJson(Map<String, dynamic> json) {
    countyId = json['_id'];
    stateId = json['state'];
    countyName = json['countyName'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = countyId;
    data['state'] = stateId;
    data['countyName'] = countyName;
    data['ImageUrl'] = imageUrl;
    return data;
  }
}
