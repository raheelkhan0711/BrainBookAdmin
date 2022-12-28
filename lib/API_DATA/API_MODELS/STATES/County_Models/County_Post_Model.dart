// ignore_for_file: file_names

class CountyPostModel {
  String? stateId;
  String? countyName;
  String? imageUrl;
  String? countyId;

  CountyPostModel(
      {this.stateId, this.countyName, this.imageUrl, this.countyId});

  CountyPostModel.fromJson(Map<String, dynamic> json) {
    stateId = json['state'];
    countyName = json['countyName'];
    imageUrl = json['ImageUrl'];
    countyId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['state'] = stateId;
    data['countyName'] = countyName;
    data['ImageUrl'] = imageUrl;
    data['_id'] = countyId;
    return data;
  }
}
