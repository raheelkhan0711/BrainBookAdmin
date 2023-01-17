// ignore_for_file: file_names

class StatePostModel {
  String? countryId;
  String? state;
  String? imageUrl;
  String? statesId;

  StatePostModel({this.countryId, this.state, this.imageUrl, this.statesId});

  StatePostModel.fromJson(Map<String, dynamic> json) {
    countryId = json['country'];
    state = json['state'];
    imageUrl = json['ImageUrl'];
    statesId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = countryId;
    data['state'] = state;
    data['ImageUrl'] = imageUrl;
    data['_id'] = statesId;
    return data;
  }
}
